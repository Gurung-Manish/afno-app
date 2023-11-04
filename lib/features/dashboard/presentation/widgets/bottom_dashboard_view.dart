import 'package:afno_app/features/dashboard/presentation/widgets/restaurant_list_card_widget.dart';
import 'package:afno_app/features/restaurant/data/datasources/restaurant_datasource.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_skeleton_niu/loading_skeleton.dart';

class BottomDashboardView extends StatefulWidget {
  final List<RestaurantModel> restaurants;
  const BottomDashboardView({
    super.key,
    required this.restaurants,
  });

  @override
  State<BottomDashboardView> createState() => _BottomDashboardViewState();
}

class _BottomDashboardViewState extends State<BottomDashboardView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Text(
              "Our Restaurants (${widget.restaurants.length})",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          icon: Icon(Icons
                              .vertical_distribute_rounded), // Icon for Filter 1
                        ),
                        Tab(
                          icon: Icon(Icons.grid_4x4), // Icon for Filter 2
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child: Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      // Filter 1 View
                      widget.restaurants.isNotEmpty
                          ? ListView.builder(
                              itemCount: widget.restaurants.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                RestaurantModel restaurant =
                                    widget.restaurants[index];
                                // Apply Filter 1
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SizedBox(
                                    height: 290,
                                    child: RestaurantListCardWidget(
                                      restaurant: restaurant,
                                    ),
                                  ),
                                );
                              },
                            )
                          : const SizedBox(),

                      // Filter 2 View
                      widget.restaurants.isNotEmpty
                          ? SingleChildScrollView(
                              child: Column(
                                children: [
                                  Wrap(
                                    spacing:
                                        12.0, // Adjust the horizontal spacing between items as needed
                                    runSpacing:
                                        8.0, // Adjust the vertical spacing between rows as needed
                                    children: List.generate(
                                        widget.restaurants.length, (index) {
                                      final restaurant =
                                          widget.restaurants[index];
                                      return SizedBox(
                                        height: 290,
                                        child: RestaurantListCardWidget(
                                          restaurant: restaurant,
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          )
        ]));
  }
}
