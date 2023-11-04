import 'package:afno_app/core/constants/constants.dart';
import 'package:afno_app/features/restaurant/data/datasources/restaurant_datasource.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:afno_app/features/restaurant/presentation/widgets/opening_hours.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantPage extends StatefulWidget {
  final String id;
  const RestaurantPage({super.key, required this.id});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  RestaurantModel? restaurant;
  List<RestaurantModel> restaurants = [];
  List<Media> imgList = [];
  @override
  void initState() {
    getRestaurantsFromCache().then((value) {
      setState(() {
        restaurants = value;
        restaurant = restaurants
            .firstWhere((element) => element.id.toString() == widget.id);
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
    return Scaffold(
      body: SafeArea(
//
          child: BlocListener<RestaurantBloc, RestaurantState>(
        listener: (context, state) {
          // TODO: implement listener
          print("geting from server");

          if (state is RestaurantStateLoaded) {
            restaurants = state.restaurants;
            RestaurantModel? newRestaurant = restaurants
                .firstWhere((element) => element.id.toString() == widget.id);
            imgList = newRestaurant.media!.isNotEmpty
                ? newRestaurant.media!.where((element) {
                    return element.collectionName == "gallery";
                  }).toList()
                : [];
            restaurant = newRestaurant;
            setState(() {});
          }
        },
        child: restaurant != null
            ? Stack(
                children: [
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverAppBar(
                        backgroundColor: Colors.white,
                        expandedHeight: 350,
                        floating: false,
                        pinned: true,
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
                                        var coverImageGet =
                                            '${AppConstants.publicUrl}/media/${img.id}/${img.fileName}';
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
                                                  fit: BoxFit.contain,
                                                  imageUrl: coverImageGet ?? "",
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
                                    restaurant!.title ?? "",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: OpeningHours(
                                      restaurants: restaurant,
                                    ),
                                  ),
                                  restaurant!.description != null &&
                                          restaurant!.description!.isNotEmpty
                                      ? HtmlWidget(
                                          restaurant!.description ?? "")
                                      : const SizedBox(),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    width: double.infinity,
                                    height: 150,
                                    // decoration: BoxDecoration(
                                    //   color: Colors.grey,
                                    //   borderRadius: BorderRadius.circular(15),
                                    // ),
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
              )
            : const SizedBox(),
      )),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: const Color(0xFFFFCC00),
        overlayColor: Colors.white,
        children: [
          SpeedDialChild(
              child: const Icon(Icons.phone), label: "Call", onTap: () {}),
          SpeedDialChild(
              child: Image.asset(
                "assets/icons/web.png",
                width: 20,
              ),
              label: "Web",
              onTap: () {
                launchUrl(Uri.parse("https://aayurtshrestha.com.np/"));
              }),
          SpeedDialChild(
              child: const Icon(Icons.facebook),
              label: "Facebook",
              onTap: () {
                launchUrl(Uri.parse(
                    "https://www.facebook.com/profile.php?id=100011115003487"));
              }),
          SpeedDialChild(
              child: Image.asset(
                "assets/icons/instagram.png",
                width: 20,
              ),
              label: "Instagram",
              onTap: () {
                launchUrl(Uri.parse("https://www.instagram.com/_manish_grg_/"));
              }),
        ],
      ),
    );
  }
}
