import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayOpeningHours extends StatefulWidget {
  final RestaurantModel? restaurants;
  final bool hideToday;

  const TodayOpeningHours(
      {super.key, required this.restaurants, this.hideToday = false});

  @override
  State<TodayOpeningHours> createState() => _TodayOpeningHoursState();
}

class _TodayOpeningHoursState extends State<TodayOpeningHours> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            widget.restaurants!.mondayOpenTime != null
                ? GetDay(
                    day: "Mon",
                    hideToday: widget.hideToday,
                    openingTime: DateFormat('HH:mm').format(getHours(
                        widget.restaurants!.mondayOpenTime.toString())),
                    closingTime: DateFormat('HH:mm').format(getHours(
                        widget.restaurants!.mondayCloseTime.toString())),
                  )
                : const SizedBox(),
            if (widget.restaurants!.tuesdayOpenTime != null)
              GetDay(
                day: "Tue",
                hideToday: widget.hideToday,
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.tuesdayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.tuesdayCloseTime.toString())),
              ),
            if (widget.restaurants!.wednesdayOpenTime != null)
              GetDay(
                day: "Wed",
                hideToday: widget.hideToday,
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.wednesdayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(getHours(
                    widget.restaurants!.wednesdayCloseTime.toString())),
              ),
            if (widget.restaurants!.thursdayOpenTime != null)
              GetDay(
                day: "Thu",
                hideToday: widget.hideToday,
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.thursdayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.thursdayCloseTime.toString())),
              ),
            if (widget.restaurants!.fridayOpenTime != null)
              GetDay(
                day: "Fri",
                hideToday: widget.hideToday,
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.fridayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.fridayCloseTime.toString())),
              ),
            if (widget.restaurants!.saturdayOpenTime != null)
              GetDay(
                day: "Sat",
                hideToday: widget.hideToday,
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.saturdayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.saturdayCloseTime.toString())),
              ),
            if (widget.restaurants!.sundayOpenTime != null)
              GetDay(
                day: "Sun",
                hideToday: widget.hideToday,
                openingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.sundayOpenTime.toString())),
                closingTime: DateFormat('HH:mm').format(
                    getHours(widget.restaurants!.sundayCloseTime.toString())),
              ),
          ],
        ),
      ],
    );
  }
}

class GetDay extends StatefulWidget {
  final String day;
  final String openingTime;
  final String closingTime;
  final bool hideToday;

  const GetDay(
      {super.key,
      required this.day,
      required this.openingTime,
      required this.closingTime,
      required this.hideToday});

  @override
  State<GetDay> createState() => _GetDayState();
}

class _GetDayState extends State<GetDay> {
  bool isToday = false;
  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    final todayWeekday = DateTime.now().weekday;

    if (widget.day == getWeekdayName(todayWeekday)) {
      setState(() {
        isToday = true;
      });
    }

    // Check if current time is within opening and closing times
    final currentTime = DateTime.now().toLocal();
    if (isToday &&
        currentTime.isAfter(currentGetDateTime(widget.openingTime)) &&
        currentTime.isBefore(currentGetDateTime(widget.closingTime))) {
      setState(() {
        isOpen = true;
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
    return isToday
        ? Row(
            children: [
              isOpen
                  ? Row(
                      children: [
                        Text(
                          "Open",
                          style:
                              TextStyle(fontSize: 16, color: Colors.green[400]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Closes at ${DateFormat('HH:mm').format(getHours(widget.closingTime))}",
                          style: const TextStyle(
                            color: Colors.grey, // Highlight if today
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Closed",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.red[400]),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Closed at ${DateFormat('HH:mm').format(getHours(widget.closingTime))}",
                              style: const TextStyle(
                                color: Colors.grey, // Highlight if today
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        !widget.hideToday
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.grey[200],
                                ),
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      child: Text(
                                        widget.day,
                                        style: TextStyle(
                                          color: isToday
                                              ? Colors.black
                                              : Colors
                                                  .grey, // Highlight if today
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      widget.openingTime,
                                      style: TextStyle(
                                        color: isToday
                                            ? Colors.black
                                            : Colors.grey,
                                        fontSize: 14,
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
                                        color: isToday
                                            ? Colors.black
                                            : Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox()
                      ],
                    ),
              const SizedBox(
                height: 5,
              ),
            ],
          )
        : const SizedBox();
  }
}

DateTime getHours(String time) {
  List<String> parts = time.split(':');

  DateTime openingHour = DateFormat('HH:mm').parse(time);
  return openingHour;
}

DateTime currentGetDateTime(String time) {
  List<String> parts = time.split(':');
  int hours = int.parse(parts[0]);
  int minutes = int.parse(parts[1]);
  DateTime now = DateTime.now();

  DateTime dateTime = DateTime(now.year, now.month, now.day, hours, minutes);

  return dateTime;
}

class CurrentDayTodayOpeningHours extends StatelessWidget {
  final Map<String, String> TodayopeningHours;

  const CurrentDayTodayOpeningHours(
      {super.key, required this.TodayopeningHours});

  @override
  Widget build(BuildContext context) {
    final currentDay = DateFormat('E').format(DateTime.now());
    final currentOpeningTime = TodayopeningHours[currentDay];
    final currentTime = DateTime.now();
    bool isOpen = false;

    if (currentOpeningTime != null) {
      final List<String> times = currentOpeningTime.split('-');
      final openTime = DateFormat('HH:mm').parse(times[0]);
      final closeTime = DateFormat('HH:mm').parse(times[1]);

      if (currentTime.isAfter(openTime) && currentTime.isBefore(closeTime)) {
        isOpen = true;
      }

      return Row(
        children: [
          Text(
            currentDay,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Open: ${times[0]} - Close: ${times[1]}',
            style: TextStyle(
              color: isOpen ? Colors.green : Colors.red,
              fontSize: 16,
            ),
          ),
        ],
      );
    } else {
      return const Text(
        'Closed Today',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.red,
        ),
      );
    }
  }
}
