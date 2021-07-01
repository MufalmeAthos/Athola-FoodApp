import 'package:flutter/material.dart';
import 'package:food_app/screens/details/details_screen.dart';
import 'package:food_app/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            title: "Mukate & Pombe",
            shopName: "Ya Makuza",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            title: "Spagetti & Wali",
            shopName: "Ku ba Chinois",
            svgSrc: "assets/icons/chinese_noodles.svg",
            press: () {},
          ),
          ItemCard(
            title: "Hamburger",
            shopName: "Pillard",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
