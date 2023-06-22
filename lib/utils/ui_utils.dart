import 'package:flutter/material.dart';
import 'package:ghar_jagga/controllers/main_controller.dart';

import 'custom_constants.dart';

class UiUtils {
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
      double radius = 0.0,
      Widget? child}) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(radius))),
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

  static Padding customCard(int i) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                height: 200,
                // width: MediaQuery.of(context).size.width / 2,
                image: AssetImage(
                  'assets/images/house (${i}).jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Property ${i}',
                    // textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('Pokhara')],
              ),
            ),
          ],
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
              color: Colors.black54,
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
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
