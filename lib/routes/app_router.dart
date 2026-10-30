import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/ui/screens/NotFound_Page.dart';

import '../ui/screens/Home_Page.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home :
        return MaterialPageRoute(builder: (_) => const HomePage()) ;
      default:
        return MaterialPageRoute(
          builder: (_) =>  NotFound_Page()
        );
    }
  }
}