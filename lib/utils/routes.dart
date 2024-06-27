import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/Google/EmailScreen.dart';
import 'package:resume_app_daily_task/Screens/Invoice_generator/HomeScreen.dart';
import 'package:resume_app_daily_task/Screens/Invoice_generator/pdfScreen.dart';
import 'package:resume_app_daily_task/Screens/RegistrationForm.dart';
import 'package:resume_app_daily_task/Screens/UserInfo.dart';
import 'package:resume_app_daily_task/Screens/image_picker.dart';
import '../Screens/Google/PasswordScreen.dart';
import '../Screens/Google/SuccessfulScreen.dart';
import '../Screens/Invoice_generator/AddScreen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/': (context) => const EntryPage(),
    // '/login': (context) => const LoginPage(),
  // '/': (context) => const EmailScreen(),
  // '/password': (context) => const PasswordScreen(),
  // '/success': (context) => const SuccessfulScreen(),
  //   '/' : (context) => const UploadImagePicker(),
  //   '/' : (context) => const Registration(),
    '/' : (context) => const Homebillscreen(),
    '/bill' : (context) => const Billscreen(),
    '/pdf' : (context) => const pdfbillscreen(),

  //   '/' : (context) => const UserInfoApp(),
  };
}