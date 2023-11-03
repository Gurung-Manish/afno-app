import 'package:afno_app/core/shared_pref/shared_pref.dart';
import 'package:afno_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});
  final List<Introduction> list = [
    Introduction(
      subTitleTextStyle: const TextStyle(fontSize: 16, color: Colors.grey),
      title: 'Discover',
      subTitle:
          'Discover the best of Nepali cuisine right around you. Afno-App makes exploring hidden flavors a delightful journey.',
      imageUrl: 'assets/images/community.png',
    ),
    Introduction(
      subTitleTextStyle: const TextStyle(fontSize: 16, color: Colors.grey),
      title: 'Cherish Moments',
      subTitle:
          'Create heartwarming moments even far from home. Afno-App brings Nepal close to you.',
      imageUrl: 'assets/images/community.png',
    ),
    Introduction(
      subTitleTextStyle: const TextStyle(fontSize: 16, color: Colors.grey),
      title: 'Connect',
      subTitle:
          'Connect with your roots and fellow Nepali souls wherever you go. Afno-App bridging gap, one heart at a time.',
      imageUrl: 'assets/images/community.png',
    ),
    Introduction(
      subTitleTextStyle: const TextStyle(fontSize: 16, color: Colors.grey),
      title: 'Savor Traditions',
      subTitle:
          'Savor the rich traditions of Nepal, even far from the Himalayas. Ensuring you don`t miss single bite from home.',
      imageUrl: 'assets/images/traditions.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        SharedPrefService.storeToken(SharedPrefKey.firstLogin, "false");
        context.go(RoutesConstant.dashboard);
      },
      backgroudColor: Colors.white,
      skipTextStyle: TextStyle(color: Theme.of(context).primaryColor),
      // foregroundColor: Colors.red,
    );
  }
}
