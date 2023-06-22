import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_app_theme_data.dart';
import '../utils/custom_constants.dart';
import '../utils/ui_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Get registered and find you desired property!',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style:
                        CustomAppThemeData.appThemeData.textTheme.displayLarge,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Text('Enter Username'),
              UiUtils.customBox(height: 15),
              const Text('Enter Password'),
              UiUtils.customBox(height: 15),
              const Text('Re-enter Password'),
              UiUtils.customBox(height: 15),
              const Text('Enter Email'),
              UiUtils.customBox(height: 20),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(CustomConstants.routeLogin);
                      },
                      child: Text(
                        'Login',
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
        onTap: () {},
        child: UiUtils.customContainer(
            bgColor: Colors.black26,
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            )),
      ),
    );
  }
}
