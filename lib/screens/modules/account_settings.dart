import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_jagga/utils/custom_app_bar.dart';
import 'package:ghar_jagga/utils/custom_constants.dart';

import '../../controllers/main_controller.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key, required this.mainController});

  final MainController mainController;

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Account Settings',
          actionWidgets: IconButton(
              onPressed: () {
                Get.offAllNamed(CustomConstants.routeLogin);
              },
              icon: const Icon(
                Icons.logout,
                size: 40,
              ))
          //         GestureDetector(
          //         onTap: () {
          // Get.offAllNamed(CustomConstants.routeLogin);
          // },
          //     child: const Icon(Icons.logout,)),
          ),
    );
  }
}
