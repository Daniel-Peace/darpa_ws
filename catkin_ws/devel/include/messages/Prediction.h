// Generated by gencpp from file messages/Prediction.msg
// DO NOT EDIT!


#ifndef MESSAGES_MESSAGE_PREDICTION_H
#define MESSAGES_MESSAGE_PREDICTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <messages/Prediction_element.h>

namespace messages
{
template <class ContainerAllocator>
struct Prediction_
{
  typedef Prediction_<ContainerAllocator> Type;

  Prediction_()
    : prediction_elements()  {
    }
  Prediction_(const ContainerAllocator& _alloc)
    : prediction_elements(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::messages::Prediction_element_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::messages::Prediction_element_<ContainerAllocator> >> _prediction_elements_type;
  _prediction_elements_type prediction_elements;





  typedef boost::shared_ptr< ::messages::Prediction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::messages::Prediction_<ContainerAllocator> const> ConstPtr;

}; // struct Prediction_

typedef ::messages::Prediction_<std::allocator<void> > Prediction;

typedef boost::shared_ptr< ::messages::Prediction > PredictionPtr;
typedef boost::shared_ptr< ::messages::Prediction const> PredictionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::messages::Prediction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::messages::Prediction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::messages::Prediction_<ContainerAllocator1> & lhs, const ::messages::Prediction_<ContainerAllocator2> & rhs)
{
  return lhs.prediction_elements == rhs.prediction_elements;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::messages::Prediction_<ContainerAllocator1> & lhs, const ::messages::Prediction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::messages::Prediction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::Prediction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::Prediction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::Prediction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::Prediction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::Prediction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::messages::Prediction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8cd1b69eb03fe3bdb64009a9530a56a9";
  }

  static const char* value(const ::messages::Prediction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8cd1b69eb03fe3bdULL;
  static const uint64_t static_value2 = 0xb64009a9530a56a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::messages::Prediction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "messages/Prediction";
  }

  static const char* value(const ::messages::Prediction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::messages::Prediction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Prediction_element[] prediction_elements\n"
"================================================================================\n"
"MSG: messages/Prediction_element\n"
"int32   injury_class\n"
"float64 confidence\n"
;
  }

  static const char* value(const ::messages::Prediction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::messages::Prediction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prediction_elements);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Prediction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::messages::Prediction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::messages::Prediction_<ContainerAllocator>& v)
  {
    s << indent << "prediction_elements[]" << std::endl;
    for (size_t i = 0; i < v.prediction_elements.size(); ++i)
    {
      s << indent << "  prediction_elements[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::messages::Prediction_element_<ContainerAllocator> >::stream(s, indent + "    ", v.prediction_elements[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MESSAGES_MESSAGE_PREDICTION_H