import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petro_ui/screens/petshopscreen/petshopscreenwidget/food_grid.dart';
import 'package:petro_ui/screens/seeallproductsscreen/see_all_products_screen.dart';
import 'package:petro_ui/utils/fonts.dart';
import '../../widgets/bottom_navigation_bar.dart';
import 'petshopscreenwidget/medicine_vaccine_list.dart';
import 'petshopscreenwidget/pet_shop_categories_widget.dart';

class PetShopScreen extends StatelessWidget {
  const PetShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('lib/assets/icons/petroicon.svg'),
                  SvgPicture.asset('lib/assets/icons/search.svg'),
                ],
              ),
              Text('PET SHOP',
                  style: kMonsterratSemiBold.copyWith(
                    fontSize: 15,
                  )),
              const SizedBox(
                height: 5,
              ),
              Text('A variety of animal supplies and pet accessories.',
                  style: kMonsterratSemiBold.copyWith(
                    fontSize: 15,
                  )),
              const PETShopCategories(),
              Text(
                'FOODS',
                style: kMonsterratSemiBold.copyWith(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const FoodsGrid(),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const SeeAllProductsScreen()),
                        ));
                  },
                  child: Text(
                    'See All',
                    style: kMonsterratSemiBold.copyWith(
                        fontSize: 10, color: const Color(0xff392D69)),
                  ),
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              Text(
                'MEDICINE & VACCINE',
                style: kMonsterratSemiBold.copyWith(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const MedicineVaccineList()
            ],
          ),
        ),
      ),
    );
  }
}
