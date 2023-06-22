import 'package:flutter/material.dart';
import '../utils/function_utils.dart';
import '../controllers/main_controller.dart';
import 'ui_utils.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key, required this.mainController});

  final MainController mainController;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 25.0,
        left: 50,
        right: 50,
        height: 50,
        child: UiUtils.customContainer(
          // width: MediaQuery.of(context).size.width - 100,
          radius: 20,
          bgColor: Colors.black26,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UiUtils.customBox(width: 5),
              GestureDetector(
                  onTap: () {
                    FunctionUtils.changePage(widget.mainController, 0);
                  },
                  child: Icon(Icons.shopping_cart_sharp)),
              GestureDetector(
                  onTap: () {
                    FunctionUtils.changePage(widget.mainController, 1);
                  },
                  child: Icon(Icons.home)),
              GestureDetector(
                  onTap: () {
                    FunctionUtils.changePage(widget.mainController, 2);
                  },
                  child: Icon(Icons.person)),
              UiUtils.customBox(width: 5),
            ],
          ),
        ));
  }
}
