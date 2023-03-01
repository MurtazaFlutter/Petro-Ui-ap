import 'package:flutter/material.dart';
import 'package:petro_ui/screens/homeScreen/homeScreenWidgets/category_widget.dart';
import 'package:petro_ui/screens/homeScreen/homeScreenWidgets/sell_widget.dart';
import 'package:petro_ui/utils/fonts.dart';
import '../petshopscreen/petshop_screen.dart';
import '../../widgets/bottom_navigation_bar.dart';
import 'homeScreenWidgets/custom_app_bar.dart';
import 'homeScreenWidgets/header_widget.dart';
import 'homeScreenWidgets/popular_brands_widget.dart';
import 'homeScreenWidgets/todaysdealwidget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.022, vertical: height * 0.067),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(
                height: height * 0.026,
              ),
              HeaderWidget(height: height),
              SizedBox(
                height: height * 0.014,
              ),
              SellWidget(height: height, width: width),
              SizedBox(
                height: height * 0.048,
              ),
              Row(
                children: [
                  Categorywidget(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PetShopScreen()));
                    },
                    height: height,
                    width: width,
                    color: const Color(0xff7776BC),
                    title1: 'PETS SHOP',
                    title2: 'PET FOOD AND SUPPLIES',
                  ),
                  SizedBox(
                    width: width * 0.018,
                  ),
                  Categorywidget(
                    onTap: () {},
                    height: height,
                    width: width,
                    color: const Color(0xff95A0FD),
                    title1: 'PLANTS SHOP',
                    title2: 'INDOOR AND OUTDOOR \nPLANTS',
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.023,
              ),
              Text(
                'Today\'s deal',
                style: kMonsterratSemiBold.copyWith(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const TodaysDealWidget(),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Popular Brands',
                style: kMonsterratSemiBold.copyWith(fontSize: 15),
              ),
              const SizedBox(
                height: 17,
              ),
              const PopularBrandsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
