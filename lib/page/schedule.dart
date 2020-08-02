import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(color: Colors.purple.withOpacity(0.2)),
              child: Text(
                "Date marked on calender means you have received your item of the day",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 360,
              child: CalendarCarousel(
                selectedDayButtonColor: Colors.purple,
                dayButtonColor: Colors.purple.withOpacity(0.1),
                daysHaveCircularBorder: false,
                markedDateShowIcon: true,
                isScrollable: false,
                markedDateCustomShapeBorder: BeveledRectangleBorder(),
                onDayPressed: (date, list) {
                  print(date);
                  print(list);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
