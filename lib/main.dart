import 'package:afno_app/bloc_provider.dart';
import 'package:afno_app/core/service_locator/service_locator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();

  String envFile = '.env.development';
  await dotenv.load(fileName: envFile);
  await setUpServiceLocator();
  runApp(const BlocProviderContainer());
}
