import 'package:afno_app/features/dashboard/presentation/widgets/restaurant_list_card_widget.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_skeleton_niu/loading_skeleton.dart';

class BottomDashboardView extends StatelessWidget {
  const BottomDashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
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
            BlocBuilder<RestaurantBloc, RestaurantState>(
              builder: (context, state) {
                if (state is RestaurantStateLoaded) {
                  List<RestaurantModel> restaurants = state.restaurants;

                  return Expanded(
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
                  );
                } else if (state is RestaurantStateLoading) {
                  return Expanded(
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
                  );
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SizedBox(
                  //       height: 50,
                  //       width: 50,
                  //       child: CircularProgressIndicator(),
                  //     ),
                  //   ],
                  // );
                } else {
                  return const Text("Error");
                }
              },
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
