import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_jagga/utils/custom_app_theme_data.dart';
import 'package:ghar_jagga/utils/custom_constants.dart';
import 'package:ghar_jagga/utils/ui_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Find you perfect property!',
                style: CustomAppThemeData.appThemeData.textTheme.displayLarge,
              ),
            ],
          ),
          Column(
            children: [
              const Text('Username'),
              UiUtils.customBox(height: 30),
              const Text('Password'),
              UiUtils.customBox(height: 20),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot credentials',
                      style:
                          CustomAppThemeData.appThemeData.textTheme.bodySmall,
                    ),
                    UiUtils.customBox(width: 10),
                    UiUtils.customVDivider(
                        thick: 1, indent: 7, color: Colors.black54),
                    UiUtils.customBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(CustomConstants.routeSignUp);
                      },
                      child: Text(
                        'Register account',
                        style:
                            CustomAppThemeData.appThemeData.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          UiUtils.customBox(height: 10)
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Get.offAllNamed(CustomConstants.routeHome);
        },
        child: UiUtils.customContainer(
            bgColor: Colors.black26,
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            )),
      ),
    );
  }
}
