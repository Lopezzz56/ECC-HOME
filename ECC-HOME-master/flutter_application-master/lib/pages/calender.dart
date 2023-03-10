import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class CalendarApp extends StatefulWidget {
  const CalendarApp({super.key, required this.title});

  final String title;

  @override
  State<CalendarApp> createState() => _CalendarAppState();
}

class _CalendarAppState extends State<CalendarApp> {
  CalendarController calendarController = CalendarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 
                  Color.fromARGB(255, 51, 63, 225),
                  Color.fromARGB(255, 86, 221, 210),
                ],
                begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                //colors: <Color>[Color.fromARGB(255, 161, 22, 186), Colors.blue])),
      ),
          ),
    ),
        ),
        body: SfCalendar(
          controller: calendarController,
          view: CalendarView.schedule,
           scheduleViewSettings: const ScheduleViewSettings(
            appointmentTextStyle: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 0, 140, 255)),
                 dayHeaderSettings: DayHeaderSettings(
                dayFormat: 'EEEE',
                width: 70,
                dayTextStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.red,
                ),
                dateTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 233, 25, 10),
                )
                )),
                
                
          allowedViews: const [CalendarView.week, CalendarView.timelineWeek, CalendarView.month],
          dataSource: _getCalendarDataSource(),
        ));
  }
}

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];
  appointments.add(Appointment(
    startTime: DateTime.now(),
    endTime: DateTime.now().add(const Duration(hours: 2)),
    subject: 'Meeting',
    color: Color.fromARGB(255, 249, 255, 255),
    startTimeZone: '',
    endTimeZone: '',
  ));


  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source){
    appointments = source;
  }
}