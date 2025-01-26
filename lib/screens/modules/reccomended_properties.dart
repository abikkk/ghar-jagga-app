import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_jagga/controllers/main_controller.dart';
import '../../utils/custom_app_bar.dart';
import '../../utils/ui_utils.dart';

class ReccomendedProperties extends StatefulWidget {
  const ReccomendedProperties({super.key, required this.mainController});

  final MainController mainController;

  @override
  State<ReccomendedProperties> createState() => _ReccomendedPropertiesState();
}

class _ReccomendedPropertiesState extends State<ReccomendedProperties> {
  MainController mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'Recommended',
          actionWidgets:null,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Text('Recommended'),
            UiUtils.customContainer(
              height: 490,
              child: ListWheelScrollView(
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 500,
                  children: [
                    for (int i = 1;
                        i < mainController.allProperties.length;
                        i++)
                      UiUtils.customCard(mainController.allProperties[i])
                  ]),
            ),
          ],
        ));
  }
}
