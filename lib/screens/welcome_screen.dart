import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petro_ui/screens/homeScreen/home_screen.dart';
import '../utils/fonts.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  // TodayDealModel? todayDealModel;
//  WelcomeScreen({super.key, this.todayDealModel});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('lib/assets/images/logo.png'),
            SizedBox(
              height: height * 0.025,
            ),
            SvgPicture.asset('lib/assets/icons/PETRO.svg'),
            SizedBox(
              height: height * 0.08,
            ),
            Text(
              'Welcome to PETRO',
              textAlign: TextAlign.center,
              style: kMontserratAlternatesBold.copyWith(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              'Petro is a one-stop shop for all your pet and \nplant needs',
              textAlign: TextAlign.center,
              style: kMontserratAlternatesRegular.copyWith(
                  fontSize: height * 0.014, color: const Color(0xff7A7A7A)),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeScreen())
                    // MaterialPageRoute(builder: (context) => HomeScreen(todayDealModel: todayDealModel,))
                    // MaterialPageRoute(
                    //     builder: (context) => HomeScreen(
                    //           todayDealModel: TodayDealModel(
                    //               title: todayDealModel!.title,
                    //               image: todayDealModel!.image,
                    //               price: todayDealModel!.price,
                    //               ratings: todayDealModel!.price,
                    //               totalRatings: todayDealModel!.totalRatings),
                    //         )),
                    );
              },
              child: Container(
                height: height * 0.048,
                width: width * 0.177,
                decoration: BoxDecoration(
                  color: const Color(0xff7776BC),
                  borderRadius: BorderRadius.circular(46),
                ),
                child: Center(
                  child: Text(
                    'Visit shop',
                    style: kMontserratAlternatesSemiBold.copyWith(
                        color: Colors.white, fontSize: height * 0.022),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
