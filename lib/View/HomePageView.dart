import 'package:flutter/material.dart';

import 'package:web/Config/ResponsiveLayout.dart';
import 'package:web/Pages/MobileHomePage.dart';
import 'package:web/Pages/WebHomePage.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomePage(),
      Web: WebHomePage(),
    );
  }
}
