import 'package:flutter/widgets.dart';

class ContentDivision extends StatelessWidget {
  final Color color;
  const ContentDivision({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 1, color: color),
    );
  }
}
