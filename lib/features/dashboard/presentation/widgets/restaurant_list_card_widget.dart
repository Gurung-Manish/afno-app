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
            width: 300,
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
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: coverImageGet != null
                          ? CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: coverImageGet,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => Center(
                                child: CircularProgressIndicator(
                                    value: downloadProgress.progress),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            )
                          : const SizedBox(),
                    ),
                  ),
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
