// Generated by gencpp from file messages/Prediction_element.msg
// DO NOT EDIT!


#ifndef MESSAGES_MESSAGE_PREDICTION_ELEMENT_H
#define MESSAGES_MESSAGE_PREDICTION_ELEMENT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace messages
{
template <class ContainerAllocator>
struct Prediction_element_
{
  typedef Prediction_element_<ContainerAllocator> Type;

  Prediction_element_()
    : injury_class(0)
    , confidence(0.0)  {
    }
  Prediction_element_(const ContainerAllocator& _alloc)
    : injury_class(0)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _injury_class_type;
  _injury_class_type injury_class;

   typedef double _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::messages::Prediction_element_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::messages::Prediction_element_<ContainerAllocator> const> ConstPtr;

}; // struct Prediction_element_

typedef ::messages::Prediction_element_<std::allocator<void> > Prediction_element;

typedef boost::shared_ptr< ::messages::Prediction_element > Prediction_elementPtr;
typedef boost::shared_ptr< ::messages::Prediction_element const> Prediction_elementConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::messages::Prediction_element_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::messages::Prediction_element_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::messages::Prediction_element_<ContainerAllocator1> & lhs, const ::messages::Prediction_element_<ContainerAllocator2> & rhs)
{
  return lhs.injury_class == rhs.injury_class &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::messages::Prediction_element_<ContainerAllocator1> & lhs, const ::messages::Prediction_element_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::messages::Prediction_element_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::Prediction_element_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::Prediction_element_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::Prediction_element_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::Prediction_element_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::Prediction_element_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::messages::Prediction_element_<ContainerAllocator> >
{
  static const char* value()
  {
    return "499cd330dc55ccd91a9dc7aa5896e1f7";
  }

  static const char* value(const ::messages::Prediction_element_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x499cd330dc55ccd9ULL;
  static const uint64_t static_value2 = 0x1a9dc7aa5896e1f7ULL;
};

template<class ContainerAllocator>
struct DataType< ::messages::Prediction_element_<ContainerAllocator> >
{
  static const char* value()
  {
    return "messages/Prediction_element";
  }

  static const char* value(const ::messages::Prediction_element_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::messages::Prediction_element_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32   injury_class\n"
"float64 confidence\n"
;
  }

  static const char* value(const ::messages::Prediction_element_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::messages::Prediction_element_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.injury_class);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Prediction_element_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::messages::Prediction_element_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::messages::Prediction_element_<ContainerAllocator>& v)
  {
    s << indent << "injury_class: ";
    Printer<int32_t>::stream(s, indent + "  ", v.injury_class);
    s << indent << "confidence: ";
    Printer<double>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MESSAGES_MESSAGE_PREDICTION_ELEMENT_H
