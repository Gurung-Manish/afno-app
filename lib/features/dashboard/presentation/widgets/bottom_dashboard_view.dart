import 'package:afno_app/features/dashboard/presentation/widgets/restaurant_list_card_widget.dart';
import 'package:afno_app/features/restaurant/data/datasources/restaurant_datasource.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_skeleton_niu/loading_skeleton.dart';

class BottomDashboardView extends StatefulWidget {
  const BottomDashboardView({
    super.key,
  });

  @override
  State<BottomDashboardView> createState() => _BottomDashboardViewState();
}

class _BottomDashboardViewState extends State<BottomDashboardView> {
  List<RestaurantModel> restaurants = [];

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
    return Container(
        height: 302,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, right: 15, left: 15),
              child: Text(
                "Restaurants",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            restaurants.isNotEmpty
                ? BlocListener<RestaurantBloc, RestaurantState>(
                    listener: (context, state) {
                      if (state is RestaurantStateLoaded) {
                        restaurants = state.restaurants;
                        setState(() {});
                      }
                    },
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: restaurants.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          RestaurantModel restaurant = restaurants[index];
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: RestaurantListCardWidget(
                              restaurant: restaurant,
                            ),
                          );
                        },
                      ),
                    ))
                : Expanded(
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(25)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: LoadingSkeleton(
                                  width: 300,
                                  height: 200,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
