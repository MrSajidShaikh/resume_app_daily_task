
import 'package:flutter/material.dart';
import '../Screens/HomeScreen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const HomeScreen(),
  };
}
