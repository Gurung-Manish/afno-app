import 'dart:async';
import 'dart:ui';

import 'package:afno_app/core/constants/constants.dart';
import 'package:afno_app/core/widgets/google_map_widget/google_map_widget.dart';
import 'package:afno_app/features/restaurant/data/datasources/restaurant_datasource.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:afno_app/features/restaurant/presentation/widgets/current_opening_hour.dart';
import 'package:afno_app/features/restaurant/presentation/widgets/opening_hours.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
  String coverImageOrg = "";
  bool isOpen = false;
  String openingHour = "";
  static const CameraPosition _kLake = CameraPosition(
    target: LatLng(51.50, 0.127),
    zoom: 14,
  );
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  List<Marker> markers = <Marker>[];

  final carouselLength = 5;

  @override
  void initState() {
    getRestaurantsFromCache().then((value) {
      setState(() {
        restaurants = value;
        restaurant = restaurants
            .firstWhere((element) => element.id.toString() == widget.id);
        List<Marker> newMarkers = <Marker>[];

        newMarkers.add(Marker(
          markerId: MarkerId(restaurant!.id.toString()),
          position: LatLng(
            double.tryParse(restaurant!.latitude ?? "") ?? 0.0,
            double.tryParse(restaurant!.longitude ?? "") ?? 0.0,
          ),
          infoWindow: InfoWindow(
            title: restaurant!.title ?? "Marker",
          ),
        ));
        markers = newMarkers;
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
            Media? coverImageFind;
            coverImageFind = newRestaurant.media?.firstWhere(
              (element) {
                return element.collectionName == "cover";
              },
            );
            coverImageOrg = coverImageFind != null
                ? '${AppConstants.publicUrl}/media/${coverImageFind.id}/${coverImageFind.fileName}'
                : "";
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
                        expandedHeight:
                            MediaQuery.of(context).size.height / 2 + 100,
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
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            CachedNetworkImage(
                                              fit: BoxFit.cover,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  2,
                                              width: double.infinity,
                                              imageUrl: coverImageOrg ?? "",
                                              progressIndicatorBuilder:
                                                  (context, url,
                                                          downloadProgress) =>
                                                      Center(
                                                child:
                                                    CircularProgressIndicator(
                                                        value: downloadProgress
                                                            .progress),
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            ),
                                            Positioned(
                                              bottom: 10,
                                              right: 10,
                                              child: ClipOval(
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 5.0, sigmaY: 5.0),
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 0, right: 0),
                                                    width: 40,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: Colors.pink),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        IconButton(
                                                          icon: const Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: Colors.white,
                                                            size: 20,
                                                          ),
                                                          onPressed: () {},
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: imgList.length,
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              Media first = imgList[index];

                                              var coverImageGet1 =
                                                  '${AppConstants.publicUrl}/media/${first.id}/${first.fileName}';
                                              // Apply Filter 1
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      context: context,
                                                      builder: (context) {
                                                        return SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child:
                                                                CachedNetworkImage(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width -
                                                                  10,
                                                              fit: BoxFit
                                                                  .contain,
                                                              imageUrl:
                                                                  coverImageGet1 ??
                                                                      "",
                                                              progressIndicatorBuilder:
                                                                  (context, url,
                                                                          downloadProgress) =>
                                                                      Center(
                                                                child: CircularProgressIndicator(
                                                                    value: downloadProgress
                                                                        .progress),
                                                              ),
                                                              errorWidget: (context,
                                                                      url,
                                                                      error) =>
                                                                  const Icon(Icons
                                                                      .error),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    width: 200,
                                                    imageUrl:
                                                        coverImageGet1 ?? "",
                                                    progressIndicatorBuilder:
                                                        (context, url,
                                                                downloadProgress) =>
                                                            Center(
                                                      child: CircularProgressIndicator(
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
                                          ),
                                        ),
                                        // Expanded(
                                        //   child: Row(
                                        //     children: [
                                        //       Expanded(
                                        //           child: CarouselSlider.builder(
                                        //               options: CarouselOptions(
                                        //                 height: MediaQuery.of(
                                        //                             context)
                                        //                         .size
                                        //                         .height /
                                        //                     4,
                                        //                 autoPlay: false,
                                        //                 enlargeFactor: 0.5,
                                        //                 enlargeCenterPage: true,
                                        //                 enlargeStrategy:
                                        //                     CenterPageEnlargeStrategy
                                        //                         .height,
                                        //                 enableInfiniteScroll:
                                        //                     true,
                                        //                 aspectRatio: 16 / 9,
                                        //                 viewportFraction: 1,
                                        //                 initialPage: 0,

                                        //               ),
                                        //               itemCount: imgList
                                        //                       .length ~/
                                        //                   carouselLength.ceil(),
                                        //               itemBuilder: (context,
                                        //                   index, realIndex) {
                                        //                 Media first =
                                        //                     imgList[index];
                                        //                 Media? second = index <
                                        //                         imgList.length -
                                        //                             1
                                        //                     ? imgList[index + 1]
                                        //                     : null;

                                        //                 var coverImageGet1 =
                                        //                     '${AppConstants.publicUrl}/media/${first.id}/${first.fileName}';
                                        //                 return Builder(
                                        //                   builder: (BuildContext
                                        //                       context) {
                                        //                     final arr = [];
                                        //                     arr.length =
                                        //                         carouselLength;
                                        //                     return Row(
                                        //                         children: arr
                                        //                             .map(
                                        //                                 (item) {
                                        //                       return Container(
                                        //                         padding: const EdgeInsets
                                        //                             .symmetric(
                                        //                             horizontal:
                                        //                                 4),
                                        //                         width: MediaQuery.of(
                                        //                                     context)
                                        //                                 .size
                                        //                                 .width /
                                        //                             carouselLength,
                                        //                         child:
                                        //                             ClipRRect(
                                        //                           borderRadius:
                                        //                               BorderRadius
                                        //                                   .circular(
                                        //                                       10),
                                        //                           child:
                                        //                               CachedNetworkImage(
                                        //                             fit: BoxFit
                                        //                                 .cover,
                                        //                             imageUrl:
                                        //                                 coverImageGet1 ??
                                        //                                     "",
                                        //                             progressIndicatorBuilder: (context,
                                        //                                     url,
                                        //                                     downloadProgress) =>
                                        //                                 Center(
                                        //                               child: CircularProgressIndicator(
                                        //                                   value:
                                        //                                       downloadProgress.progress),
                                        //                             ),
                                        //                             errorWidget: (context,
                                        //                                     url,
                                        //                                     error) =>
                                        //                                 const Icon(
                                        //                                     Icons.error),
                                        //                           ),
                                        //                         ),
                                        //                       );
                                        //                     }).toList());
                                        //                   },
                                        //                 );
                                        //               })),
                                        //     ],
                                        //   ),
                                        // ),
                                      ],
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
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    restaurant!.title ?? "",
                                    style: const TextStyle(
                                        fontFamily: 'DancingScript',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 70),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "London, United Kingdom",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Divider(
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text("Working Hours",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TodayOpeningHours(
                                                restaurants: restaurant),
                                            OutlinedButton(
                                                onPressed: () {
                                                  showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    context: context,
                                                    builder: (context) {
                                                      return SizedBox(
                                                        height: 200,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: OpeningHours(
                                                            restaurants:
                                                                restaurant,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Text(
                                                  'Show More',
                                                  style: TextStyle(
                                                      color: Colors.green[400]),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Divider(
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                        // const DirectionFavWidget(),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text("Description",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        restaurant!.subTitle != null &&
                                                restaurant!.subTitle!.isNotEmpty
                                            ? Text(
                                                restaurant!.subTitle ?? "",
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'SfPro',
                                                  fontFamilyFallback: <String>[
                                                    'Noto Sans CJK SC',
                                                    'Noto Color Emoji',
                                                  ],
                                                ),
                                              )
                                            : const SizedBox(),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        // restaurant!.description != null &&
                                        //         restaurant!
                                        //             .description!.isNotEmpty
                                        //     ? HtmlWidget(
                                        //         restaurant!.description ?? "",
                                        //         textStyle: const TextStyle(
                                        //           fontSize: 18,
                                        //           fontFamily: 'SfPro',
                                        //           fontFamilyFallback: <String>[
                                        //             'Noto Sans CJK SC',
                                        //             'Noto Color Emoji',
                                        //           ],
                                        //         ),
                                        //       )
                                        //     : const SizedBox(),
                                        restaurant!.facebook != null
                                            ? Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text("Facebook",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                      restaurant!.facebook ??
                                                          "",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                      )),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              )
                                            : const SizedBox(),
                                        restaurant!.instagram != null
                                            ? Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text("Instagram",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                      restaurant!.instagram ??
                                                          "",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                      )),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              )
                                            : const SizedBox(),
                                        restaurant!.email != null
                                            ? Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text("Email",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(restaurant!.email ?? "",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                      )),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              )
                                            : const SizedBox(),
                                        restaurant!.link != null
                                            ? Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Divider(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text("Link",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(restaurant!.link ?? "",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                      )),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              )
                                            : const SizedBox(),
                                        Divider(
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text("Maps",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        // Container(
                                        //   width: double.infinity,
                                        //   height: 150,
                                        //   decoration: BoxDecoration(
                                        //     color: Colors.grey[100],
                                        //     borderRadius:
                                        //         BorderRadius.circular(15),
                                        //   ),
                                        // ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              20,
                                          height: 400,
                                          child: GoogleMapWidget(
                                              kGooglePlex: _kLake,
                                              controller: _controller,
                                              markers: markers),
                                        ),
                                      ],
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
              )
            : const SizedBox(),
      )),
      // floatingActionButton: SpeedDial(
      //   animatedIcon: AnimatedIcons.menu_close,
      //   backgroundColor: const Color(0xFFFFCC00),
      //   overlayColor: Colors.white,
      //   children: [
      //     SpeedDialChild(
      //         child: const Icon(Icons.phone), label: "Call", onTap: () {}),
      //     SpeedDialChild(
      //         child: Image.asset(
      //           "assets/icons/web.png",
      //           width: 20,
      //         ),
      //         label: "Web",
      //         onTap: () {
      //           launchUrl(Uri.parse("https://aayurtshrestha.com.np/"));
      //         }),
      //     SpeedDialChild(
      //         child: const Icon(Icons.facebook),
      //         label: "Facebook",
      //         onTap: () {
      //           launchUrl(Uri.parse(
      //               "https://www.facebook.com/profile.php?id=100011115003487"));
      //         }),
      //     SpeedDialChild(
      //         child: Image.asset(
      //           "assets/icons/instagram.png",
      //           width: 20,
      //         ),
      //         label: "Instagram",
      //         onTap: () {
      //           launchUrl(Uri.parse("https://www.instagram.com/_manish_grg_/"));
      //         }),
      //   ],
      // ),
    );
  }
}

class DirectionFavWidget extends StatelessWidget {
  const DirectionFavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 14),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              width: 200,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.all(Radius.circular(55)),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Get Directions".toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          // fontFamily: Constants.nunito,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
