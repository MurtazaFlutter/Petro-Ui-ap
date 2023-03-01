import 'package:flutter/material.dart';
import '../../../models/medicine_vaccine_model.dart';
import '../../../utils/fonts.dart';

class MedicineVaccineList extends StatelessWidget {
  const MedicineVaccineList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: meAndVaccineList.length,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 17),
                    child: Image.asset(meAndVaccineList[index].image)),
                Text(
                  meAndVaccineList[index].title,
                  style: kMonsterratSemiBold.copyWith(fontSize: 10),
                )
              ],
            );
          })),
    );
  }
}
