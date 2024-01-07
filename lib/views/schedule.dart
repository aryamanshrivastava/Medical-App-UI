import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../widgets/calander_widget.dart';
import '../widgets/schedule_widget.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  int value = 0;
  List<Map<String, dynamic>> data = [ 
    {
      'date': '01',
      'day': 'Mon',
    },
    {
      'date': '02',
      'day': 'Tue',
    },
    {
      'date': '03',
      'day': 'Wed',
    },
    {
      'date': '04',
      'day': 'Thu',
    },
    {
      'date': '05',
      'day': 'Fri',
    },
    {
      'date': '06',
      'day': 'Sat',
    },
    {
      'date': '07',
      'day': 'Sun',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 70, right: 20),
            child: Row(
              children: [
                FadeInDown(
                  child: Text(
                    "Schedule",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          FadeInLeft(
            delay: const Duration(milliseconds: 500),  
            child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.builder(
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: index == 0 ? 20.0 : 10,
                            right: index == data.length - 1 ? 20 : 0),
                        child: GestureDetector(
                          onTap: () => setState(() {
                            value = index;
                          }),
                          child: CalenderWidget(
                              value: value, data: data, index: index),
                        ),
                      );
                    })),
          ),
          // Scheduled Appointment Widget.
          ScheduledWidget(),
        ],
      ),
    );
  }
}
