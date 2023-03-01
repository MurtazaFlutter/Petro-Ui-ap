import 'package:flutter/material.dart';
import 'package:petro_ui/utils/fonts.dart';

class ActionWidget extends StatelessWidget {
  final String text;
  final Color color;
  const ActionWidget({
    required this.color,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 36,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Center(
        child: Text(
          text,
          style: kMonsterratSemiBold.copyWith(color: Colors.white, fontSize: 5),
        ),
      ),
    );
  }
}
