import 'package:afno_app/routes/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp.router(
        title: "Afno App",
        debugShowCheckedModeBanner: false,
        routerConfig: Routes.router,
      ),
    );
  }
}
