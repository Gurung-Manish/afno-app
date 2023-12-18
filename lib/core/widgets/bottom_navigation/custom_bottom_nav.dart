import 'package:afno_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.child});
  final Widget child;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int getCurrentIndex() {
      String currentPath = GoRouterState.of(context).matchedLocation;
      if (currentPath == RoutesConstant.dashboard) {
        return 0;
      } else if (currentPath == RoutesConstant.fav) {
        return 1;
      } else {
        return 0; // default index
      }
    }

    return Scaffold(
      body: SafeArea(child: widget.child),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.8, color: Color(0xFFDBDBDB)),
          ),
        ),
        child: Theme(
          data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFFFFCC00),
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (value) {
              if (value == 0) {
                context.go(RoutesConstant.dashboard);
              } else if (value == 1) {
                context.go(RoutesConstant.fav);
              }
            },
            currentIndex: getCurrentIndex(),
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Fav",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
