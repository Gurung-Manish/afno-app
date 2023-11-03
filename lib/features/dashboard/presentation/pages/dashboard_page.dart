import 'package:afno_app/features/dashboard/presentation/widgets/bottom_dashboard_view.dart';
import 'package:afno_app/features/dashboard/presentation/widgets/dashboard_map_view.dart';
import 'package:afno_app/features/restaurant/data/datasources/restaurant_datasource.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<RestaurantModel> restaurants = [];
  List<RestaurantModel> filteredRestaurants = [];
  TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    getRestaurantsFromCache().then((value) {
      setState(() {
        restaurants = value;
      });
    });
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context
          .read<RestaurantBloc>()
          .add(const RestaurantEvent.getRestaurants());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void applyFilters() {
      setState(() {
        filteredRestaurants = restaurants.where((restaurant) {
          return (restaurant.title!
              .toLowerCase()
              .contains(textEditingController.text.toLowerCase()));
        }).toList();
      });
    }

    return BlocListener<RestaurantBloc, RestaurantState>(
      listener: (context, state) {
        if (state is RestaurantStateLoaded) {
          restaurants = state.restaurants;
          applyFilters();
          setState(() {});
        }
      },
      child: Column(
        children: [
          Flexible(
              flex: 1,
              child: Stack(
                children: [
                  DashboardMapView(
                    restaurants: filteredRestaurants,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: textEditingController,
                                  onChanged: (val) {
                                    applyFilters();
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Search...",
                                    prefixIcon: Icon(Icons.search),
                                    border: InputBorder.none,
                                    filled: true,
                                    isDense: true,
                                    suffixIconConstraints: BoxConstraints(
                                      maxHeight: 34,
                                    ),
                                    fillColor: Colors.white,
                                    hoverColor: Colors.white,
                                    contentPadding: EdgeInsets.only(
                                      top: 14.0,
                                      right: 16.0,
                                      bottom: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                              // IconButton(
                              //   onPressed: () {
                              //     // Handle search button press
                              //     applyFilters();
                              //   },
                              //   icon: Icon(
                              //     Icons.search,
                              //     color: Theme.of(context).colorScheme.primary,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          BottomDashboardView(
            restaurants: filteredRestaurants,
          ),
        ],
      ),
    );
  }
}
