import 'package:flutter/material.dart';

import 'screens/seeallproductsscreen/see_all_products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PETRO UI',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const SeeAllProductsScreen());
  }
}
