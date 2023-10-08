import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:afno_app/features/restaurant/presentation/widgets/opening_hours.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RestaurantPage extends StatefulWidget {
  final String id;
  const RestaurantPage({super.key, required this.id});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  RestaurantModel? restaurant;
  @override
  void initState() {
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
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<RestaurantBloc, RestaurantState>(
          builder: (context, state) {
            if (state is RestaurantStateLoading) {
              return const CircularProgressIndicator();
            } else if (state is RestaurantStateLoaded) {
              List<RestaurantModel> restaurants = state.restaurants;
              RestaurantModel? restaurant = restaurants
                  .firstWhere((element) => element.id.toString() == widget.id);
              List<Media> imgList = restaurant.media!.isNotEmpty
                  ? restaurant.media!.where((element) {
                      return element.collectionName == "gallery";
                    }).toList()
                  : [];
              return Stack(
                children: [
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverAppBar(
                        backgroundColor: Colors.white,
                        expandedHeight: 350,
                        floating: true,
                        pinned: false,
                        stretch: true,
                        stretchTriggerOffset: 150.0,
                        flexibleSpace: FlexibleSpaceBar(
                          stretchModes: const [
                            StretchMode.zoomBackground,
                            StretchMode.blurBackground,
                            StretchMode.fadeTitle
                          ],
                          background: Container(
                            padding: const EdgeInsets.only(top: 10),
                            constraints: const BoxConstraints(
                              minHeight: 300,
                            ),
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Hero(
                                    tag: "restaurant_${widget.id.toString()}",
                                    child: CarouselSlider(
                                      options: CarouselOptions(
                                        autoPlay: true,
                                        enlargeFactor: 0.5,
                                        enlargeCenterPage: true,
                                        enlargeStrategy:
                                            CenterPageEnlargeStrategy.height,
                                        enableInfiniteScroll: true,
                                        aspectRatio: 16 / 9,
                                        viewportFraction: 0.8,
                                        initialPage: 0,
                                      ),
                                      items: imgList.map((img) {
                                        return Builder(
                                          builder: (BuildContext context) {
                                            return Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: CachedNetworkImage(
                                                  fit: BoxFit.cover,
                                                  imageUrl:
                                                      img.originalUrl ?? "",
                                                  progressIndicatorBuilder:
                                                      (context, url,
                                                              downloadProgress) =>
                                                          Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                            value:
                                                                downloadProgress
                                                                    .progress),
                                                  ),
                                                  errorWidget: (context, url,
                                                          error) =>
                                                      const Icon(Icons.error),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                                  Text(
                                    restaurant.title ?? "",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
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
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Text(
                                          "Open",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
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
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  const OpeningHours(),
                                  const Text(
                                    "Description",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Welcome to The Rustic Fork, where culinary excellence meets cozy charm. Our chefs artfully blend flavors from around the world to create dishes that will delight your palate. Whether you're savoring a romantic dinner or catching up with friends, our warm ambiance and delectable menu ensure an unforgettable dining experience. Join us today and discover why we're a favorite among food enthusiasts.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
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
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        splashColor: Colors.grey.withOpacity(0.5),
                        focusColor: Colors.grey.withOpacity(0.5),
                        hoverColor: Colors.grey.withOpacity(0.5),
                        overlayColor: MaterialStateProperty.all(
                            Colors.grey.withOpacity(0.5)),
                        highlightColor: Colors.grey.withOpacity(0.5),
                        onTap: () {
                          context.go(RoutesConstant.dashboard);
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.5)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_back,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const Text("Error");
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFFCC00),
        onPressed: () {},
        child: const Icon(Icons.call),
      ),
    );
  }
}
