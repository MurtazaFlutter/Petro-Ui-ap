import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_rounded,
              size: 25,
              color: Color(0xff7776BC),
            )),
        BottomNavigationBarItem(
            label: 'Notifications',
            icon: Icon(
              Icons.notifications_active_outlined,
              size: 25,
              color: Color(0xff7776BC),
            )),
        BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.account_circle_outlined,
              size: 25,
              color: Color(0xff7776BC),
            )),
      ],
    );
  }
}
