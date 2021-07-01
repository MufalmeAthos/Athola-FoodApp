import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/bottom_nav_bar.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/home/components/app_bar.dart';
import 'package:food_app/screens/home/components/body.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottonNavBar(),
      body: Body(),
    );
  }
}
