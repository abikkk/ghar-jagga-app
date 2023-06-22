import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final PageController pageController = PageController(initialPage: 1),
      featuredController = PageController(viewportFraction: 0.7);
}
