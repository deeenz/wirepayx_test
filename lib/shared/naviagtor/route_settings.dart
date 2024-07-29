import 'package:flutter/material.dart';
import 'package:wirepayx/modules/auth/widgets/pin_input_page.dart';
import 'package:wirepayx/modules/home/widgets/nav_bar_widget.dart';
import 'package:wirepayx/shared/naviagtor/routes.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.pinInputPage:
        return MaterialPageRoute(
          builder: (_) {
            return const PinInputPage();
          },
        );

      case AppRoutes.homePage:
        return MaterialPageRoute(
          builder: (_) {
            return  MainNvBar();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Page not found"),
            ),
          ),
        );
    }
  }
}
