import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu),
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
              color: Color(0xff392D69), shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(
              'lib/assets/icons/cart.svg',
            ),
          ),
        )
      ],
    );
  }
}
