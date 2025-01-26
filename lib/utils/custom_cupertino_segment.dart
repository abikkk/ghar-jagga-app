import 'package:flutter/cupertino.dart';
import 'package:ghar_jagga/utils/custom_app_theme_data.dart';

class CustomCupertinoSegment extends StatefulWidget {
  const CustomCupertinoSegment({super.key, required this.segments});

  final Map<int, String> segments;

  @override
  State<CustomCupertinoSegment> createState() => _CustomCupertinoSegmentState();
}

class _CustomCupertinoSegmentState extends State<CustomCupertinoSegment> {
  int _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl(
      children: segments(widget.segments),
      groupValue: _sliding,
      onValueChanged: (int? value) {
        setState(() {
          _sliding = value!;
        });
      },
    );
  }

  Map<int, Widget> segments(var segments) {
    late Map<int, Widget> temp = {};
    for (int i = 0; i < segments.length; i++) {
      temp[i] = Text(
        segments[i],
        style: CustomAppThemeData.appThemeData.textTheme.bodySmall,
      );
    }

    // debugPrint(temp.toString());
    return temp;
  }
}
