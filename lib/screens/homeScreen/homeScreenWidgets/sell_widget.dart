import 'package:flutter/material.dart';
import 'package:petro_ui/utils/fonts.dart';

class SellWidget extends StatelessWidget {
  const SellWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.88,
      height: height * 0.16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff764899)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('lib/assets/images/sell.png'),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.015, vertical: height * 0.022),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Up To ',
                        style: kMonsterratBold.copyWith(
                            fontSize: height * 0.022, color: Colors.white),
                      ),
                      TextSpan(
                        text: '25%',
                        style: kMonsterratBold.copyWith(
                            fontSize: height * 0.022,
                            color: const Color(0xffEB9C11)),
                      ),
                      TextSpan(
                        text: ' off \non',
                        style: kMonsterratBold.copyWith(
                            fontSize: height * 0.022, color: Colors.white),
                      ),
                      TextSpan(
                        text: ' Petshop',
                        style: kMonsterratBold.copyWith(
                            fontSize: height * 0.022,
                            color: const Color(0xffEB9C11)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Collect your ',
                      style: kMonsterratSemiBold.copyWith(
                        color: Colors.white,
                        fontSize: height * 0.010,
                      )),
                  TextSpan(
                      text: 'coupon ',
                      style: kMonsterratSemiBold.copyWith(
                        color: const Color(0xffEB9C11),
                        fontSize: height * 0.013,
                      )),
                  TextSpan(
                      text: 'code',
                      style: kMonsterratSemiBold.copyWith(
                        color: Colors.white,
                        fontSize: height * 0.013,
                      )),
                ])),
                SizedBox(
                  height: height * 0.017,
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
          )
        ],
      ),
    );
  }
}
