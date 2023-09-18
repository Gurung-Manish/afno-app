import 'package:flutter/material.dart';

class TriangularContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  TriangularContainer({
    required this.child,
    this.width = 100,
    this.height = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        children: [
          Positioned(
            right: 1,
            child: SizedBox(
              height: height - 1,
              child: ClipPath(
                clipper: ReverseArrowClipper(),
                child: Container(
                  width: 10,
                  color: const Color(0xFFFFCC00),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFFFCC00),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        topRight: Radius.circular(3),
                        bottomRight: Radius.circular(3))),
                child: child,
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ReverseArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width - 5, size.height / 2)
      ..lineTo(0, 0)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
