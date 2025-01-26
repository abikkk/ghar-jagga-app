import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/main_controller.dart';
import '../models/property_model.dart';
import '../utils/custom_app_theme_data.dart';
import '../utils/function_utils.dart';

import 'custom_constants.dart';

class UiUtils {
  static Future bottomSheet(MainController mainController,
      {double hPad = 0,
      double vPad = 0,
      double topR = 0,
      double topL = 0,
      bool isDismissible = false,
      bool enableDrag = false}) {
    return Get.bottomSheet(
      Obx(
        () => customContainer(
            bgColor: Colors.grey,
            hPad: hPad,
            vPad: vPad,
            topR: topR,
            topL: topL,
            child: Wrap(
              children: [
                GestureDetector(
                  onTap: () {
                    FunctionUtils.toggleFilters(
                        mainController, CustomConstants.propertyTypeHouse);
                    FunctionUtils.changePropertyTypes(mainController);
                  },
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(CustomConstants.propertyType[
                              CustomConstants.propertyTypeHouse])),
                      Icon(
                        Icons.done,
                        color: (mainController.selectedFilters.isNotEmpty &&
                                mainController.selectedFilters.contains(
                                    CustomConstants.propertyTypeHouse))
                            ? Colors.black54
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    FunctionUtils.toggleFilters(
                        mainController, CustomConstants.propertyTypeApartment);
                    FunctionUtils.changePropertyTypes(mainController);
                  },
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(CustomConstants.propertyType[
                              CustomConstants.propertyTypeApartment])),
                      Icon(
                        Icons.done,
                        color: (mainController.selectedFilters.isNotEmpty &&
                                mainController.selectedFilters.contains(
                                    CustomConstants.propertyTypeApartment))
                            ? Colors.black54
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    FunctionUtils.toggleFilters(
                        mainController, CustomConstants.propertyTypeFlat);
                    FunctionUtils.changePropertyTypes(mainController);
                  },
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(CustomConstants
                              .propertyType[CustomConstants.propertyTypeFlat])),
                      Icon(
                        Icons.done,
                        color: (mainController.selectedFilters.isNotEmpty &&
                                mainController.selectedFilters
                                    .contains(CustomConstants.propertyTypeFlat))
                            ? Colors.black54
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    FunctionUtils.toggleFilters(
                        mainController, CustomConstants.propertyTypeLand);
                    FunctionUtils.changePropertyTypes(mainController);
                  },
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(CustomConstants
                              .propertyType[CustomConstants.propertyTypeLand])),
                      Icon(
                        Icons.done,
                        color: (mainController.selectedFilters.isNotEmpty &&
                                mainController.selectedFilters
                                    .contains(CustomConstants.propertyTypeLand))
                            ? Colors.black54
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    FunctionUtils.toggleFilters(
                        mainController, CustomConstants.propertyTypeOther);
                    FunctionUtils.changePropertyTypes(mainController);
                  },
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(CustomConstants.propertyType[
                              CustomConstants.propertyTypeOther])),
                      Icon(
                        Icons.done,
                        color: (mainController.selectedFilters.isNotEmpty &&
                                mainController.selectedFilters.contains(
                                    CustomConstants.propertyTypeOther))
                            ? Colors.black54
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
      barrierColor: Colors.grey[50],
      isDismissible: isDismissible,
      enableDrag: enableDrag,
    );
  }

  static SizedBox customBox({double? height, double? width, Widget? child}) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }

  static Container customContainer(
      {double? height,
      double? width,
      Color bgColor = Colors.transparent,
      double vPad = 0.0,
      double hPad = 0.0,
      double vMargin = 0.0,
      double hMargin = 0.0,
      double radius = 0.0,
      double? topL,
      double? topR,
      double? bottomL,
      double? bottomR,
      Widget? child}) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: hPad, vertical: vPad),
        margin: EdgeInsets.symmetric(horizontal: hMargin, vertical: vMargin),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(topR ?? radius),
              topLeft: Radius.circular(topL ?? radius),
              bottomRight: Radius.circular(bottomR ?? radius),
              bottomLeft: Radius.circular(bottomL ?? radius),
            )),
        child: child);
  }

  static Divider customHDivider(
      {double? height,
      Color? color,
      double? thick,
      double? indent,
      double? endIndent}) {
    return Divider(
      height: height,
      color: color,
      thickness: thick,
      indent: indent,
      endIndent: endIndent,
    );
  }

  static VerticalDivider customVDivider(
      {double? width,
      Color color = Colors.black54,
      double? thick,
      double? indent,
      double? endIndent}) {
    return VerticalDivider(
      width: width,
      color: color,
      thickness: thick,
      indent: indent,
      endIndent: endIndent,
    );
  }

  static Widget customClips(
      MainController mainController, String label, int propertyType) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
      child: Chip(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        deleteIcon: const Icon(Icons.remove_circle_outline),
        onDeleted: () {
          FunctionUtils.toggleFilters(mainController, propertyType);
          FunctionUtils.changePropertyTypes(mainController);
        },
        labelPadding: const EdgeInsets.symmetric(horizontal: 6),
        labelStyle: CustomAppThemeData.appThemeData.textTheme.bodySmall,
        label: Text(
          label,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }

  static Container customSearchBar() {
    return customContainer(
      height: 65,
      hMargin: 15,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
                style: CustomAppThemeData.appThemeData.textTheme.bodyMedium,
                // cursorHeight: 20,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    label: Text('Search'),
                    suffixIcon: Icon(
                      Icons.search,
                      size: 25,
                    ))),
          )
        ],
      ),
    );
  }

  static Padding customCard(PropertyModel property) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 8,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image(
                height: 300,
                // width: MediaQuery.of(context).size.width / 2,
                image: property.image[0].image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      customBox(width: 5),
                      Text(
                        '${property.label}',
                        style: CustomAppThemeData
                            .appThemeData.textTheme.titleMedium,
                        // textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      property.isFav.value = !property.isFav.value;
                    },
                    child: AnimatedContainer(
                      duration: const Duration(
                          milliseconds: CustomConstants.animationSlow),
                      child: Obx(
                        () => Icon(
                          property.isFav.value
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.pin_drop,
                  ),
                  customBox(width: 10),
                  Text(
                    '${property.street}, ${property.city}, ${property.province}, ${property.country}',
                    style: CustomAppThemeData.appThemeData.textTheme.bodySmall,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.currency_rupee_rounded,
                  ),
                  customBox(width: 10),
                  Text(
                    property.price.toStringAsFixed(2),
                    style: CustomAppThemeData.appThemeData.textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Padding customListTiles(PropertyModel property) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Card(
        elevation: 8,
        child: ListTile(
          title: Text(
            '${property.label}',
            style: CustomAppThemeData.appThemeData.textTheme.bodyLarge,
            // textAlign: TextAlign.end,
          ),
          subtitle: Text(
            '${property.street}, ${property.city}, ${property.province}, ${property.country}',
            style: CustomAppThemeData.appThemeData.textTheme.bodySmall,
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Image(
              height: 140,
              width: 100,
              image: property.image[0].image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  static Center customCardNavBtn(MainController mainController) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              mainController.featuredController.previousPage(
                  duration: const Duration(
                      milliseconds: CustomConstants.animationFast),
                  curve: Curves.easeInOut);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              mainController.featuredController.nextPage(
                  duration: const Duration(
                      milliseconds: CustomConstants.animationFast),
                  curve: Curves.easeInOut);
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
