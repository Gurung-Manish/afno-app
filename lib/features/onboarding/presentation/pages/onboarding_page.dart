import 'package:afno_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});
  final List<Introduction> list = [
    Introduction(
      title: 'Discover',
      subTitle:
          'Discover the best of Nepali cuisine right around you.\nAfno-App makes exploring hidden flavors a delightful journey.',
      imageUrl: 'assets/images/community.png',
    ),
    Introduction(
      title: 'Cherish Moments',
      subTitle:
          'Create heartwarming moments even far from home.\nAfno-App brings Nepal close to you.',
      imageUrl: 'assets/images/community.png',
    ),
    Introduction(
      title: 'Connect',
      subTitle:
          'Connect with your roots and fellow Nepali souls wherever you go.\nAfno-App bridging gap, one heart at a time.',
      imageUrl: 'assets/images/community.png',
    ),
    Introduction(
      title: 'Savor Traditions',
      subTitle:
          'Savor the rich traditions of Nepal, even far from the Himalayas.\nEnsuring you don`t miss single bite from home.',
      imageUrl: 'assets/images/traditions.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        context.go(RoutesConstant.dashboard);
      },
      backgroudColor: Colors.white,
      skipTextStyle: TextStyle(color: Theme.of(context).primaryColor),
      // foregroundColor: Colors.red,
    );
  }
}
