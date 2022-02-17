import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/number_login.dart';

class Routes {
  static const loginRoute = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login' :
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default :
        return MaterialPageRoute(builder: (_) =>Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}