import 'package:flutter/material.dart';
import 'package:habit_breaker/utils/routes/RoutesName.dart';
import 'package:habit_breaker/view/home_screen.dart';
import 'package:habit_breaker/view/info_screen.dart';
import 'package:habit_breaker/view/profile_screen.dart';
import 'package:habit_breaker/view/search_for_goals.dart';
import 'package:habit_breaker/view/signup_screen.dart';

import '../../view/create_new_goal.dart';
import '../../view/login_screen.dart';

class Routes{
    static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RoutesName.login:
        return _buildRoute( login_screen(), settings);
      case RoutesName.signup:
        return _buildRoute( signup_screen(), settings);
      case RoutesName.homeScreen:
        return _buildRoute( home_page(), settings);
      case RoutesName.infoScreen:
        return _buildRoute( info_screen(), settings);
      case RoutesName.profileScreen:
        return _buildRoute( profile_screen(), settings);
      case RoutesName.createNewGoal:
        return _buildRoute( create_new_goal(), settings);
      case RoutesName.searchForGoals:
        return _buildRoute( search_for_goals(), settings);

         default:
        return _buildRoute(const Scaffold(), settings);
    }
  }

  static _buildRoute(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
