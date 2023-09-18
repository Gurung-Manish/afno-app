import 'package:afno_app/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const BlocProviderContainer());
}
