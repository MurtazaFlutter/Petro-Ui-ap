import 'package:flutter/cupertino.dart';
import '../../../models/popular_brands_model.dart';
import '../../../utils/fonts.dart';
import 'action_button_widget.dart';

class PopularBrandsWidget extends StatelessWidget {
  const PopularBrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: popularBrandsList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 59,
                  width: 85,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: const BoxDecoration(
                    color: Color(0xffE3FFE6),
                  ),
                  child: Image.asset(popularBrandsList[index].image),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  popularBrandsList[index].title,
                  style: kMonsterratSemiBold.copyWith(
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ActionWidget(
                  color: Color(0xff2C6E49),
                  text: 'Visit Now',
                )
              ],
            );
          }),
    );
  }
}
