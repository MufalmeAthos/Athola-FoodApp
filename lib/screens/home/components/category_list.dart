import 'package:flutter/material.dart';
import 'package:food_app/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: "Sombe Yama",
            press: () {},
          ),
          CategoryItem(
            title: "Bugali Yama",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Sombe Wali",
            press: () {},
          ),
          CategoryItem(
            title: "Madesu Pilipili",
            // isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Sinkwangue ",
            press: () {},
          ),
          CategoryItem(
            title: "Sakamadesu ",
            press: () {},
          ),
        ],
      ),
    );
  }
}
