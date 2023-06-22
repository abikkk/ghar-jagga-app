import 'package:flutter/material.dart';

class ViewProperty extends StatefulWidget {
  const ViewProperty({super.key});

  @override
  State<ViewProperty> createState() => _ViewPropertyState();
}

class _ViewPropertyState extends State<ViewProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property 01'),
      ),
    );
  }
}
