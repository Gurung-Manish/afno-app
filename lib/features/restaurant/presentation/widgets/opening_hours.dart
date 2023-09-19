import 'package:flutter/material.dart';

class OpeningHours extends StatelessWidget {
  const OpeningHours({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Opening Hours",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 110,
          child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Day ${index + 1}",
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "12:00",
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Container(
                          color: Colors.grey,
                          width: 5,
                          height: 1,
                        ),
                        const Text(
                          "12:00",
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    )
                  ],
                );
              }),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
