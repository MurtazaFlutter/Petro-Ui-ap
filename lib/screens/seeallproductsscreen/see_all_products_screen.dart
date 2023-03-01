import 'package:flutter/material.dart';
import 'package:petro_ui/screens/seeallproductsscreen/seeallproductswidgets/dry_food_widget.dart';
import '../../utils/fonts.dart';
import '../../widgets/bottom_navigation_bar.dart';

class SeeAllProductsScreen extends StatelessWidget {
  const SeeAllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DRY FOOD',
                style: kMonsterratSemiBold.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                'A variety of animal supplies and pet accessories.',
                style: kMonsterratMedium.copyWith(fontSize: 13),
              ),
              const DryFoodWidget(),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'See All',
                  style: kMonsterratSemiBold.copyWith(
                      fontSize: 10, color: const Color(0xff392D69)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'PROTEIN',
                style: kMonsterratSemiBold.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                'A variety of animal supplies and pet accessories.',
                style: kMonsterratMedium.copyWith(fontSize: 13),
              ),
              const DryFoodWidget(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
