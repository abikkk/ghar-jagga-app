import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_jagga/screens/login.dart';
import 'package:ghar_jagga/utils/custom_app_theme_data.dart';
import 'package:ghar_jagga/utils/custom_constants.dart';
import 'package:ghar_jagga/utils/main_container.dart';

import 'screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ghar Jagga',
        theme: CustomAppThemeData.appThemeData,
        home: const MainContainer(),
        getPages: [
          GetPage(
            name: CustomConstants.routeHome,
            page: () => const MainContainer(),
          ),
          GetPage(
            name: CustomConstants.routeLogin,
            page: () => const LoginScreen(),
          ),
          GetPage(
            name: CustomConstants.routeSignUp,
            page: () => const SignUpScreen(),
          ),
        ]);
  }
}
