// Generated by gencpp from file messages/Vitals_report.msg
// DO NOT EDIT!


#ifndef MESSAGES_MESSAGE_VITALS_REPORT_H
#define MESSAGES_MESSAGE_VITALS_REPORT_H


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
struct Vitals_report_
{
  typedef Vitals_report_<ContainerAllocator> Type;

  Vitals_report_()
    : casualty_id(0)
    , team()
    , system()
    , type()
    , value(0)
    , time_ago(0)  {
    }
  Vitals_report_(const ContainerAllocator& _alloc)
    : casualty_id(0)
    , team(_alloc)
    , system(_alloc)
    , type(_alloc)
    , value(0)
    , time_ago(0)  {
  (void)_alloc;
    }



   typedef int32_t _casualty_id_type;
  _casualty_id_type casualty_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _team_type;
  _team_type team;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _system_type;
  _system_type system;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef int32_t _value_type;
  _value_type value;

   typedef int32_t _time_ago_type;
  _time_ago_type time_ago;





  typedef boost::shared_ptr< ::messages::Vitals_report_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::messages::Vitals_report_<ContainerAllocator> const> ConstPtr;

}; // struct Vitals_report_

typedef ::messages::Vitals_report_<std::allocator<void> > Vitals_report;

typedef boost::shared_ptr< ::messages::Vitals_report > Vitals_reportPtr;
typedef boost::shared_ptr< ::messages::Vitals_report const> Vitals_reportConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::messages::Vitals_report_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::messages::Vitals_report_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::messages::Vitals_report_<ContainerAllocator1> & lhs, const ::messages::Vitals_report_<ContainerAllocator2> & rhs)
{
  return lhs.casualty_id == rhs.casualty_id &&
    lhs.team == rhs.team &&
    lhs.system == rhs.system &&
    lhs.type == rhs.type &&
    lhs.value == rhs.value &&
    lhs.time_ago == rhs.time_ago;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::messages::Vitals_report_<ContainerAllocator1> & lhs, const ::messages::Vitals_report_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::messages::Vitals_report_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::Vitals_report_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::Vitals_report_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::Vitals_report_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::Vitals_report_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::Vitals_report_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::messages::Vitals_report_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7fbc70b8f7fcda9f9d28d5bbc673bba5";
  }

  static const char* value(const ::messages::Vitals_report_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7fbc70b8f7fcda9fULL;
  static const uint64_t static_value2 = 0x9d28d5bbc673bba5ULL;
};

template<class ContainerAllocator>
struct DataType< ::messages::Vitals_report_<ContainerAllocator> >
{
  static const char* value()
  {
    return "messages/Vitals_report";
  }

  static const char* value(const ::messages::Vitals_report_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::messages::Vitals_report_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32   casualty_id\n"
"string  team\n"
"string  system\n"
"string  type\n"
"int32   value\n"
"int32   time_ago\n"
;
  }

  static const char* value(const ::messages::Vitals_report_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::messages::Vitals_report_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.casualty_id);
      stream.next(m.team);
      stream.next(m.system);
      stream.next(m.type);
      stream.next(m.value);
      stream.next(m.time_ago);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vitals_report_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::messages::Vitals_report_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::messages::Vitals_report_<ContainerAllocator>& v)
  {
    s << indent << "casualty_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.casualty_id);
    s << indent << "team: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.team);
    s << indent << "system: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.system);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.value);
    s << indent << "time_ago: ";
    Printer<int32_t>::stream(s, indent + "  ", v.time_ago);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MESSAGES_MESSAGE_VITALS_REPORT_H