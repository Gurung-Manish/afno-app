import 'package:afno_app/core/constants/constants.dart';
import 'package:afno_app/features/dashboard/presentation/widgets/triangular_container.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class RestaurantListCardWidget extends StatelessWidget {
  const RestaurantListCardWidget({super.key, required this.restaurant});

  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    var index = restaurant.id;
    List<Media>? coverImages = restaurant.media
        ?.where(
          (element) => element.collectionName == "cover",
        )
        .toList();
    Media? coverImage;
    if (coverImages!.isNotEmpty) {
      coverImage = restaurant.media?.firstWhere(
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
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: coverImageGet != null
                          ? CachedNetworkImage(
                              fit: BoxFit.contain,
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
                                  restaurant.title ?? "",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:
                                      1, // Limit the text to a single line
                                ),
                              ),
                              TriangularContainer(
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    "1km",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.wallet,
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
                                  restaurant.subTitle ?? "",
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
                          )
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
