import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OpeningHours extends StatefulWidget {
  final RestaurantModel? restaurants;

  const OpeningHours({super.key, required this.restaurants});

  @override
  State<OpeningHours> createState() => _OpeningHoursState();
}

class _OpeningHoursState extends State<OpeningHours> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Opening Hours",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            widget.restaurants!.mondayOpenTime != null
                ? GetDay(
                    day: "Mon",
                    openingTime: DateFormat('HH:mm').format(getHours(
                        widget.restaurants!.mondayOpenTime.toString())),
                    closingTime: DateFormat('HH:mm').format(getHours(
                        widget.restaurants!.mondayCloseTime.toString())),
                  )
                : const SizedBox(),
            if (widget.restaurants!.tuesdayOpenTime != null)
              GetDay(
                day: "Tue",
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.tuesdayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.tuesdayCloseTime.toString())),
              ),
            if (widget.restaurants!.wednesdayOpenTime != null)
              GetDay(
                day: "Wed",
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.wednesdayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(getHours(
                    widget.restaurants!.wednesdayCloseTime.toString())),
              ),
            if (widget.restaurants!.thursdayOpenTime != null)
              GetDay(
                day: "Thu",
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.thursdayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.thursdayCloseTime.toString())),
              ),
            if (widget.restaurants!.fridayOpenTime != null)
              GetDay(
                day: "Fri",
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.fridayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.fridayCloseTime.toString())),
              ),
            if (widget.restaurants!.saturdayOpenTime != null)
              GetDay(
                day: "Sat",
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.saturdayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.saturdayCloseTime.toString())),
              ),
            if (widget.restaurants!.sundayOpenTime != null)
              GetDay(
                day: "Sun",
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.sundayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.sundayCloseTime.toString())),
              ),
          ],
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}

class GetDay extends StatefulWidget {
  final String day;
  final String openingTime;
  final String closingTime;
  const GetDay(
      {super.key,
      required this.day,
      required this.openingTime,
      required this.closingTime});

  @override
  State<GetDay> createState() => _GetDayState();
}

class _GetDayState extends State<GetDay> {
  bool isToday = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final todayWeekday = DateTime.now().weekday;

    if (widget.day == getWeekdayName(todayWeekday)) {
      setState(() {
        isToday = true;
      });
    }
  }

  String getWeekdayName(int weekday) {
    switch (weekday) {
      case 1:
        return "Mon";
      case 2:
        return "Tue";
      case 3:
        return "Wed";
      case 4:
        return "Thu";
      case 5:
        return "Fri";
      case 6:
        return "Sat";
      case 7:
        return "Sun";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              widget.day,
              style: TextStyle(
                color:
                    isToday ? Colors.black : Colors.grey, // Highlight if today
                fontSize: 12,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              widget.openingTime,
              style: TextStyle(
                color:
                    isToday ? Colors.black : Colors.grey, // Highlight if today
                fontSize: 12,
              ),
            ),
            Container(
              color: Colors.grey,
              width: 5,
              height: 1,
            ),
            Text(
              widget.closingTime,
              style: TextStyle(
                color:
                    isToday ? Colors.black : Colors.grey, // Highlight if today
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

DateTime getHours(String time) {
  DateTime openingHour = DateFormat('HH:mm').parse(time);
  return openingHour;
}
