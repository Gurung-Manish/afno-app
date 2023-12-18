import 'package:afno_app/core/constants/constants.dart';
import 'package:afno_app/features/dashboard/presentation/widgets/triangular_container.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/widgets/current_opening_hour.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RestaurantListCardWidget extends StatefulWidget {
  const RestaurantListCardWidget({super.key, required this.restaurant});
  final RestaurantModel restaurant;

  @override
  State<RestaurantListCardWidget> createState() =>
      _RestaurantListCardWidgetState();
}

class _RestaurantListCardWidgetState extends State<RestaurantListCardWidget> {
  @override
  Widget build(BuildContext context) {
    var index = widget.restaurant.id;
    List<Media>? coverImages = widget.restaurant.media
        ?.where(
          (element) => element.collectionName == "cover",
        )
        .toList();
    Media? coverImage;
    if (coverImages!.isNotEmpty) {
      coverImage = widget.restaurant.media?.firstWhere(
        (element) {
          return element.collectionName == "cover";
        },
      );
    }

    String? coverImageGet = coverImage != null
        ? '${AppConstants.publicUrl}/media/${coverImage.id}/${coverImage.fileName}'
        : "";

    return GestureDetector(
      child: Hero(
        tag: "restaurant_${index.toString()}",
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            width: 302,
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 200,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: coverImageGet != null
                          ? CachedNetworkImage(
                              fit: BoxFit.fitWidth,
                              height: 200,
                              width: double.maxFinite,
                              imageUrl: coverImageGet,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => Center(
                                child: CircularProgressIndicator(
                                    value: downloadProgress.progress),
                              ),
                              errorWidget: (context, url, error) =>
                                  const SizedBox(
                                      height: 200, child: Icon(Icons.error)),
                            )
                          : const SizedBox(),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.restaurant.title ?? "",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:
                                      1, // Limit the text to a single line
                                ),
                              ),
                              // Text(
                              //   '${isMylocationSet ? distance : ""}' ?? "",
                              //   style: const TextStyle(
                              //     fontSize: 16,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              //   overflow: TextOverflow.ellipsis,
                              //   maxLines: 1, // Limit the text to a single line
                              // ),
                              TriangularContainer(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    '${widget.restaurant.distance != null ? num.parse(widget.restaurant.distance!.toStringAsFixed(1)) : "-"} km',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.gps_fixed_sharp,
                                size: 14,
                                color: Color(0xFFFFCC00),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width:
                                    200, // Set a specific width to limit the space for the text
                                child: Text(
                                  widget.restaurant.location ?? "No location.",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                  maxLines: 2, // Allow at most 2 lines of text
                                  overflow: TextOverflow
                                      .ellipsis, // Display ellipsis (...) if text overflows
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TodayOpeningHours(
                            restaurants: widget.restaurant,
                            hideToday: true,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        context.go("${RoutesConstant.restaurant}/$index");
      },
    );
  }
}
