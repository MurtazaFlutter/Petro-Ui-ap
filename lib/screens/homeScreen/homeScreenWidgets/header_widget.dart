import 'package:flutter/material.dart';

import '../../../utils/fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hi There,', style: kMonsterratSemiBold.copyWith(fontSize: 15)),
        SizedBox(
          height: height * 0.005,
        ),
        Text(
          'What can I help you to find?',
          style: kMonsterratSemiBold.copyWith(fontSize: 15),
        ),
        SizedBox(
          height: height * 0.003,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              size: 9,
              color: Color(0xff5755CA),
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              'Karachi, Pakistan',
              style: kMonsterratRegular.copyWith(fontSize: 9),
            ),
          ],
        ),
      ],
    );
  }
}
