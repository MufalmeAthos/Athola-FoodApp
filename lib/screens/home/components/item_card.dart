import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final Function press;
  const ItemCard({
    Key key,
    this.title,
    this.shopName,
    this.svgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 15, right: 10, top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    svgSrc,
                    width: size.width * 0.15,
                    // size.width * 0.14 means it uses 14% of the total width
                  ),
                ),
                Text(
                  title,
                  // style: TextStyle(color: kPrimaryColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  shopName,
                  style: TextStyle(fontSize: 12, color: kPrimaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
