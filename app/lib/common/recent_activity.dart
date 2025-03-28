import 'package:flutter/material.dart';
import 'package:app/common/color_dot.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({
    super.key,
    required this.color,
    required this.label,
    required this.text,
  });

  final Color color;
  final String text;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ColorDot(color: color),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            label, 
            style: TextTheme.of(context).bodyMedium
          ), 
          Text(
            text,
            style: TextTheme.of(context).bodyLarge,
          ),
        ],
        ),
      ],
    );
  }
}
