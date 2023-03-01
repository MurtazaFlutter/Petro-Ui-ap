import 'package:flutter/material.dart';
import '../../../models/pet_shop_categories_model.dart';
import '../../../utils/fonts.dart';

class PETShopCategories extends StatelessWidget {
  const PETShopCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 54, mainAxisSpacing: 29),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(categories[index].image),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  categories[index].title,
                  style: kMonsterratSemiBold.copyWith(fontSize: 14),
                ),
              ],
            );
          }),
    );
  }
}
