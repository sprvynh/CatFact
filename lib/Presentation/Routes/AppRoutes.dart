import 'package:flutter/material.dart';

import '../../Presentation/Views/Views.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const FactView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const FactView(),
        );
    }
  }
}
