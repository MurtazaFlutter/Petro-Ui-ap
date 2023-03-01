import 'package:flutter/material.dart';
import 'package:petro_ui/models/todays_deal_mode.dart';
import '../../../utils/fonts.dart';
import 'action_button_widget.dart';

class TodaysDealWidget extends StatelessWidget {
  const TodaysDealWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 59,
                    width: 85,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFEFD3),
                    ),
                    child: Image.asset(productList[index].image)),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      productList[index].price.toString(),
                      style: kMonsterratSemiBold.copyWith(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '\$35.49',
                      style: kMonsterratSemiBold.copyWith(
                          fontSize: 10, decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  productList[index].title,
                  style: kMonsterratSemiBold.copyWith(
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const ActionWidget(
                  text: 'Add To Cart',
                  color: Color(0xff2C6E49),
                ),
              ],
            );
          }),
    );
  }
}
