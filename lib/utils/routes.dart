import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/Google/EmailScreen.dart';
import 'package:resume_app_daily_task/Screens/image_picker.dart';
import '../Screens/Google/PasswordScreen.dart';
import '../Screens/Google/SuccessfulScreen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/': (context) => const EntryPage(),
    // '/login': (context) => const LoginPage(),
  // '/': (context) => const EmailScreen(),
  // '/password': (context) => const PasswordScreen(),
  // '/success': (context) => const SuccessfulScreen(),
    '/' : (context) => const UploadImagePicker(),
  };
}
