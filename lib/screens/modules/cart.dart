import 'package:flutter/material.dart';

import '../../controllers/main_controller.dart';

class Cart extends StatefulWidget {
  const Cart({super.key, required this.mainController});

  final MainController mainController;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
    );
  }
}
