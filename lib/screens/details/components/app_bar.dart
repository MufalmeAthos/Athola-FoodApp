import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/screens/home/home_screen.dart';

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.white,
      onPressed: () {
        //Return to home
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
          ),
        );
      },
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/share.svg",
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/more.svg",
        ),
        onPressed: () {},
      ),
    ],
  );
}
