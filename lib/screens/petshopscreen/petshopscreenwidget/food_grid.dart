import 'package:flutter/material.dart';

import '../../../models/food_grid_model.dart';
import '../../../utils/fonts.dart';

class FoodsGrid extends StatelessWidget {
  const FoodsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: foodGridList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 28, crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 78,
                    width: 64,
                    child: Image.asset(foodGridList[index].image)),
                Text(
                  foodGridList[index].title,
                  style: kMonsterratSemiBold.copyWith(
                    fontSize: 10,
                  ),
                )
              ],
            );
          }),
    );
  }
}
