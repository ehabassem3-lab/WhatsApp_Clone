import 'package:flutter/material.dart';
import 'package:whats_app/domain/entities/Chat_Item.dart';
import 'package:whats_app/ui/screens/pages/NotFound_Page.dart';
import 'package:whats_app/ui/screens/pages/Single_Chat_Page.dart';
import 'package:whats_app/ui/screens/pages/Single_Profile_Picture_Page.dart';

import '../ui/screens/pages/Home_Page.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home :
        return MaterialPageRoute(builder: (_) =>  HomePage()) ;
      case AppRoutes.singleProfilePicture:
        return MaterialPageRoute(builder: (_) =>  SingleProfilePicturePage(imageUrl: settings.arguments as String)) ;
     case AppRoutes.singleChatPage:
        return MaterialPageRoute(builder: (_) =>  SingleChatPage(chatItem: settings.arguments as ChatItem)) ;
      default:
        return MaterialPageRoute(
          builder: (_) =>  NotFound_Page()
        );
    }
  }
}