import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobileBody;
  final desktopBody;
  const ResponsiveLayout({super.key, this.mobileBody, this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 640) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
