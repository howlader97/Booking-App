import 'package:booking_app/src/view/widget/schedule_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import '../../models/view_resort.dart';



class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDate = DateTime.now();
  int currentWeekOffset = 0;

  DateTime get startOfWeek {
    final today = DateTime.now().add(Duration(days: 7 * currentWeekOffset));
    return today.subtract(Duration(days: today.weekday % 7));
  }

  List<DateTime> getWeekDays() {
    final start = startOfWeek;
    return List.generate(7, (i) => start.add(Duration(days: i)));
  }

  void changeWeek(int offset) {
    setState(() {
      currentWeekOffset += offset;
    });
  }

  void selectDate(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }

  List<ViewResort> viewResorts=ViewResort.getResort();

  @override
  Widget build(BuildContext context) {
    final weekDays = getWeekDays();
    final displayTitle = DateFormat('d MMMM').format(selectedDate);

    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 6),
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios),),
                  ),
                  Spacer(),
                  Text(
                    'Schedule',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_outlined),),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Container(
                width: double.infinity,
                height: 160,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title and arrows
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          displayTitle,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.chevron_left),
                              onPressed: () => changeWeek(-1),
                            ),
                            IconButton(
                              icon: Icon(Icons.chevron_right),
                              onPressed: () => changeWeek(1),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Day selector
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: weekDays.map((date) {
                        final isSelected = DateUtils.isSameDay(date, selectedDate);
                        return GestureDetector(
                          onTap: () => selectDate(date),
                          child: Column(
                            children: [
                              Text(
                                DateFormat('E').format(date).substring(0, 1), // First letter of weekday
                                style: TextStyle(
                                  fontSize: 14,
                                  color: isSelected ? Colors.blue : Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                                decoration: BoxDecoration(
                                  color: isSelected ? Colors.blue : Colors.transparent,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  date.day.toString(),
                                  style: TextStyle(
                                    color: isSelected ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Text('My Schedule',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xFF1B1E28)
                  ),),
                  Spacer(),
                  InkWell(
                    onTap: (){
                    },
                      child: Text('View all',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xFF0D6EFD)),)),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                   itemCount: 5,
                    itemBuilder: (context,index){
                  return ScheduleData(viewResort: viewResorts[0]);
                }),
              )

            ],
          ),
        ),
      ),
    );
  }
}

