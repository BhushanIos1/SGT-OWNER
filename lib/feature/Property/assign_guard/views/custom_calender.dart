import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel, EventList;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sgt_owner/feature/Property/assign_guard/views/assign_guard.dart';
import 'package:sgt_owner/style/colors.dart';

class CustomCalenderWidget extends StatefulWidget {
  final VoidCallback onCallback;
  CustomCalenderWidget({super.key, required this.onCallback});

  @override
  State<CustomCalenderWidget> createState() => _CustomCalenderWidgetState();
}

class _CustomCalenderWidgetState extends State<CustomCalenderWidget> {


  final EventList<Event> _markedDateMap = EventList<Event>(
    events: {
      DateTime(2024, 1, 29): [
        Event(
          date: DateTime(2024, 1, 29),
          title: 'Event 1',
        )
      ],
      // DateTime(2024, 1, 11): [
      //   Event(
      //     date: DateTime(2024, 1, 11),
      //     title: 'Event 2',
      //   ),
      //   Event(
      //     date: DateTime(2024, 1, 22),
      //     title: 'Event 3',
      //   ),
      //   Event(
      //     date: DateTime(2024, 1, 28),
      //     title: 'Event 3',
      //   )
      // ]
    },
  );

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: kElevationToShadow[1]),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          setState(() {
            final DateFormat formatter = DateFormat('yyyy-MM-dd');
            final String formatted = formatter.format(date);
            AssignGuardPage.of(context)?.fromDate = formatted;
          });
          widget.onCallback();
        },
        weekendTextStyle: TextStyle(
          color: AppColors.black,
        ),
        weekFormat: false,
        markedDatesMap: _markedDateMap,
        height: 380.0,
        headerTextStyle: TextStyle(color: AppColors.primaryColor),
        daysHaveCircularBorder: true,
        todayTextStyle: TextStyle(color: AppColors.white),
        todayButtonColor: AppColors.primaryColor,
        todayBorderColor: AppColors.white,
        minSelectedDate: DateTime.now().subtract(Duration(days: 1)),
      ),
    );
  }
}

class OtherCalenderWidget extends StatefulWidget {
  final VoidCallback onCall;
  OtherCalenderWidget({super.key, required this.onCall});

  @override
  _OtherCalenderWidgetState createState() => new _OtherCalenderWidgetState();
}

class _OtherCalenderWidgetState extends State<OtherCalenderWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: kElevationToShadow[1]),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          setState(() {
            final DateFormat formatter = DateFormat('yyyy-MM-dd');
            final String formatted = formatter.format(date);
            AssignGuardPage.of(context)?.fromDate = formatted;
          });
          widget.onCall();
        },
        weekendTextStyle: TextStyle(
          color: AppColors.black,
        ),
        weekFormat: false,
        height: 380.0,
        daysHaveCircularBorder: true,
        todayTextStyle: TextStyle(color: AppColors.black),
        todayButtonColor: AppColors.white,
        todayBorderColor: AppColors.white,
        minSelectedDate: DateTime.now().subtract(Duration(days: 1)),
      ),
    );
  }
}
