from ultralytics import YOLO
from PIL import Image
import json
import rospy
from messages.msg import Prediction
from messages.msg import Prediction_element

def run_predictor():
    # creating publisher
    publisher = rospy.Publisher('yoloV8_prediction', Prediction, queue_size=10)

    # creating ROS node
    rospy.init_node('yoloV8_node', anonymous=True)

    # running node until user terminates the process
    while not rospy.is_shutdown():
        # initializing yoloV8 model
        model = YOLO("./yoloV8_weights/best.pt")

        # getting image path from user
        image_path = input("Enter a path to an image:\n")

        # opening image
        image = Image.open(image_path)

        # running model on image
        results = model.predict(source=image)

        # formatting results into a json
        for result in results:
            combined_data = [{"class": int(cls), "confidence": float(conf)} for cls, conf in zip(result.boxes.cls.cpu().numpy(), result.boxes.conf.cpu().numpy())]
            json.dumps(combined_data)
            print(combined_data)

        # iterating over predictions to create ROS message
        prediction = Prediction()
        for item in combined_data:
            prediction_element = Prediction_element()
            prediction_element.injury_class = item['class']
            prediction_element.confidence = item['confidence']
            prediction.prediction_elements.append(prediction_element)

        print(prediction)

        # Publishing ROS message
        publisher.publish(prediction)

if __name__ == "__main__":
    run_predictor()