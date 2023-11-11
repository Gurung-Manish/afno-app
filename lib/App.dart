import 'package:afno_app/routes/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Afno App",
      debugShowCheckedModeBanner: false,
      home: MaterialApp.router(
        theme: ThemeData(
          fontFamily: "SfPro",
          primaryColor:
              const Color(0xFFFFCC00), // Set your custom primary color here
        ),
        title: "Afno App",
        debugShowCheckedModeBanner: false,
        routerConfig: Routes.router,
      ),
    );
  }
}
