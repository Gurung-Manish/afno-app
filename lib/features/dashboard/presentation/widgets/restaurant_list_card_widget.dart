import 'package:flutter/material.dart';

class RestaurantListCardWidget extends StatelessWidget {
  const RestaurantListCardWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Center(child: Text("Restaurant Hero Image")),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Restaurant Name ${index + 1}",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
