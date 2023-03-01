import 'package:flutter/material.dart';
import 'package:petro_ui/utils/fonts.dart';

class Categorywidget extends StatelessWidget {
  final VoidCallback onTap;
  final Color? color;
  final String title1;
  final String title2;

  const Categorywidget({
    super.key,
    required this.onTap,
    required this.color,
    required this.title1,
    required this.title2,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height * 0.12,
          width: width * 0.22,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: EdgeInsets.all(height * 0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title1,
                  style: kMonsterratSemiBold.copyWith(
                      fontSize: 17, color: Colors.white),
                ),
                Text(
                  title2,
                  textAlign: TextAlign.center,
                  style: kMonsterratMedium.copyWith(
                      fontSize: 11, color: Colors.white),
                ),
                Container(
                  width: width * 0.056,
                  height: height * 0.019,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      'Shop now',
                      style:
                          kMonsterratMedium.copyWith(fontSize: height * 0.009),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
