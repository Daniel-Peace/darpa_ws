// Generated by gencpp from file messages/Vitals_report_response.msg
// DO NOT EDIT!


#ifndef MESSAGES_MESSAGE_VITALS_REPORT_RESPONSE_H
#define MESSAGES_MESSAGE_VITALS_REPORT_RESPONSE_H


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
struct Vitals_report_response_
{
  typedef Vitals_report_response_<ContainerAllocator> Type;

  Vitals_report_response_()
    : run()
    , team()
    , user()
    , system()
    , clock(0.0)
    , report_id()
    , report_timestamp()
    , reports_remaining(0)
    , report_status()
    , casualty_id(0)
    , type()
    , value(0)
    , time_ago(0)  {
    }
  Vitals_report_response_(const ContainerAllocator& _alloc)
    : run(_alloc)
    , team(_alloc)
    , user(_alloc)
    , system(_alloc)
    , clock(0.0)
    , report_id(_alloc)
    , report_timestamp(_alloc)
    , reports_remaining(0)
    , report_status(_alloc)
    , casualty_id(0)
    , type(_alloc)
    , value(0)
    , time_ago(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _run_type;
  _run_type run;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _team_type;
  _team_type team;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _user_type;
  _user_type user;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _system_type;
  _system_type system;

   typedef double _clock_type;
  _clock_type clock;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _report_id_type;
  _report_id_type report_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _report_timestamp_type;
  _report_timestamp_type report_timestamp;

   typedef int32_t _reports_remaining_type;
  _reports_remaining_type reports_remaining;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _report_status_type;
  _report_status_type report_status;

   typedef int32_t _casualty_id_type;
  _casualty_id_type casualty_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef int32_t _value_type;
  _value_type value;

   typedef int32_t _time_ago_type;
  _time_ago_type time_ago;





  typedef boost::shared_ptr< ::messages::Vitals_report_response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::messages::Vitals_report_response_<ContainerAllocator> const> ConstPtr;

}; // struct Vitals_report_response_

typedef ::messages::Vitals_report_response_<std::allocator<void> > Vitals_report_response;

typedef boost::shared_ptr< ::messages::Vitals_report_response > Vitals_report_responsePtr;
typedef boost::shared_ptr< ::messages::Vitals_report_response const> Vitals_report_responseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::messages::Vitals_report_response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::messages::Vitals_report_response_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::messages::Vitals_report_response_<ContainerAllocator1> & lhs, const ::messages::Vitals_report_response_<ContainerAllocator2> & rhs)
{
  return lhs.run == rhs.run &&
    lhs.team == rhs.team &&
    lhs.user == rhs.user &&
    lhs.system == rhs.system &&
    lhs.clock == rhs.clock &&
    lhs.report_id == rhs.report_id &&
    lhs.report_timestamp == rhs.report_timestamp &&
    lhs.reports_remaining == rhs.reports_remaining &&
    lhs.report_status == rhs.report_status &&
    lhs.casualty_id == rhs.casualty_id &&
    lhs.type == rhs.type &&
    lhs.value == rhs.value &&
    lhs.time_ago == rhs.time_ago;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::messages::Vitals_report_response_<ContainerAllocator1> & lhs, const ::messages::Vitals_report_response_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::messages::Vitals_report_response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::Vitals_report_response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::Vitals_report_response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::Vitals_report_response_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::Vitals_report_response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::Vitals_report_response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::messages::Vitals_report_response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "36982e9875749000fa799fe02bb5f3fa";
  }

  static const char* value(const ::messages::Vitals_report_response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x36982e9875749000ULL;
  static const uint64_t static_value2 = 0xfa799fe02bb5f3faULL;
};

template<class ContainerAllocator>
struct DataType< ::messages::Vitals_report_response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "messages/Vitals_report_response";
  }

  static const char* value(const ::messages::Vitals_report_response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::messages::Vitals_report_response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string  run\n"
"string  team\n"
"string  user\n"
"string  system\n"
"float64 clock\n"
"string  report_id\n"
"string  report_timestamp\n"
"int32   reports_remaining\n"
"string  report_status\n"
"int32   casualty_id\n"
"string  type\n"
"int32   value\n"
"int32   time_ago\n"
;
  }

  static const char* value(const ::messages::Vitals_report_response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::messages::Vitals_report_response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.run);
      stream.next(m.team);
      stream.next(m.user);
      stream.next(m.system);
      stream.next(m.clock);
      stream.next(m.report_id);
      stream.next(m.report_timestamp);
      stream.next(m.reports_remaining);
      stream.next(m.report_status);
      stream.next(m.casualty_id);
      stream.next(m.type);
      stream.next(m.value);
      stream.next(m.time_ago);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vitals_report_response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::messages::Vitals_report_response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::messages::Vitals_report_response_<ContainerAllocator>& v)
  {
    s << indent << "run: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.run);
    s << indent << "team: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.team);
    s << indent << "user: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.user);
    s << indent << "system: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.system);
    s << indent << "clock: ";
    Printer<double>::stream(s, indent + "  ", v.clock);
    s << indent << "report_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.report_id);
    s << indent << "report_timestamp: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.report_timestamp);
    s << indent << "reports_remaining: ";
    Printer<int32_t>::stream(s, indent + "  ", v.reports_remaining);
    s << indent << "report_status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.report_status);
    s << indent << "casualty_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.casualty_id);
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

#endif // MESSAGES_MESSAGE_VITALS_REPORT_RESPONSE_H
