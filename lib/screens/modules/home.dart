import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/main_controller.dart';
import '../../utils/custom_constants.dart';
import '../../utils/ui_utils.dart';
import '../../utils/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.mainController});

  final MainController mainController;
  final String title, subtitle;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Let's find your dream property",
        actionWidgets: null,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UiUtils.customSearchBar(),
            Obx(
              () => UiUtils.customBox(
                height: widget.mainController.selectedFilters.isEmpty ? 0 : 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.mainController.selectedFilters.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int i) {
                      return UiUtils.customClips(
                          widget.mainController,
                          CustomConstants.propertyType[
                              widget.mainController.selectedFilters[i]],
                          widget.mainController.selectedFilters[i]);
                    }),
              ),
            ),
            Obx(
              () => UiUtils.customContainer(
                vPad: 20,
                hMargin: 10,
                height: 500,
                child: ListView.builder(
                    itemCount: widget.mainController.sortedProperties.isEmpty
                        ? widget.mainController.allProperties.length
                        : widget.mainController.sortedProperties.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int i) {
                      return UiUtils.customListTiles(
                          widget.mainController.sortedProperties.isEmpty
                              ? widget.mainController.allProperties[i]
                              : widget.mainController.sortedProperties[i]);
                    }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade600,
        onPressed: () {
          UiUtils.bottomSheet(widget.mainController,
              hPad: 25,
              vPad: 10,
              topL: 30,
              topR: 30,
              isDismissible: true,
              enableDrag: true);
        },
        child: const Icon(Icons.filter_alt_rounded),
      ),
    );
  }
}
