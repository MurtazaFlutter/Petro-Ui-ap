import 'package:flutter/material.dart';
import 'package:petro_ui/utils/fonts.dart';

import '../../../models/dry_food_model.dart';
import '../../homeScreen/homeScreenWidgets/action_button_widget.dart';

class DryFoodWidget extends StatelessWidget {
  const DryFoodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: mDVaccineproductList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, childAspectRatio: 0.5
            // Height to width ratio of each item
            ),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 56,
                width: 56,
                child: Image.asset(mDVaccineproductList[index].image,
                    fit: BoxFit.cover),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    mDVaccineproductList[index].price.toString(),
                    style: kMonsterratBold.copyWith(
                      fontSize: 8,
                      color: const Color(0xff5755CA),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '\$35.49',
                    style: kMonsterratSemiBold.copyWith(
                      fontSize: 8,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                mDVaccineproductList[index].title,
                textAlign: TextAlign.center,
                style: kMonsterratSemiBold.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const ActionWidget(
                text: 'Add To Cart',
                color: Color(0xff5755CA),
              ),
            ],
          );
        },
      ),
    );
  }
}
