import 'package:afno_app/features/restaurant/presentation/widgets/opening_hours.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              floating: false,
              pinned: true,
              flexibleSpace: Stack(
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 300),
                    color: Colors.red,
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: GestureDetector(
                      onTap: () {
                        // Handle the back button tap
                        context.go(RoutesConstant.dashboard);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Restaurant Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF79DE89),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                "Open",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(
                              Icons.location_on,
                              size: 16,
                              color: Color(0xFFFFCC00),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              "Reading, UK",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                        const OpeningHours(),
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Welcome to The Rustic Fork, where culinary excellence meets cozy charm. Our chefs artfully blend flavors from around the world to create dishes that will delight your palate. Whether you're savoring a romantic dinner or catching up with friends, our warm ambiance and delectable menu ensure an unforgettable dining experience. Join us today and discover why we're a favorite among food enthusiasts.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
