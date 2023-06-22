import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_jagga/utils/custom_constants.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
        actions: [
          IconButton(
              onPressed: () {
                Get.offAllNamed(CustomConstants.routeLogin);
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
