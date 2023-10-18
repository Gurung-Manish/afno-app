import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OpeningHours extends StatefulWidget {
  final RestaurantModel restaurants;

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
            GetDay(
              day: "Mon",
              openingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.mondayOpenTime.toString())),
              closingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.mondayCloseTime.toString())),
            ),
            GetDay(
              day: "Tue",
              openingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.tuesdayOpenTime.toString())),
              closingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.tuesdayCloseTime.toString())),
            ),
            GetDay(
              day: "Wed",
              openingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.wednesdayOpenTime.toString())),
              closingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.wednesdayCloseTime.toString())),
            ),
            GetDay(
              day: "Thu",
              openingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.thursdayOpenTime.toString())),
              closingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.thursdayCloseTime.toString())),
            ),
            GetDay(
              day: "Fri",
              openingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.fridayOpenTime.toString())),
              closingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.fridayCloseTime.toString())),
            ),
            GetDay(
              day: "Sat",
              openingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.saturdayOpenTime.toString())),
              closingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.saturdayCloseTime.toString())),
            ),
            GetDay(
              day: "Sun",
              openingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.sundayOpenTime.toString())),
              closingTime: DateFormat('HH:mm').format(
                  getHours(widget.restaurants.sundayCloseTime.toString())),
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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              widget.day,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              widget.openingTime,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Container(
              color: Colors.grey,
              width: 5,
              height: 1,
            ),
            Text(
              widget.closingTime,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
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
