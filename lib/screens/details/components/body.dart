import 'package:flutter/material.dart';
import 'package:food_app/screens/details/components/item_image.dart';
import 'package:food_app/screens/details/components/order_button.dart';
import 'package:food_app/screens/details/components/status_success.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(
          imgSrc: "assets/images/burger1.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ], //
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          StatusSuccess(
            isCorrect: false,
          ),
          TitlePriceRating(
            name: "Pombe's & Beer",
            numOfReview: 25,
            rating: 4,
            price: 18,
            onRatingChanged: (value) {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0.0),
            child: Text(
              "Very long text iko saa kla chever de mr seguin ye tuli somaka mu maternelle aooo primaire miye angu sijuwe bien. Ben on s'en fou!\nEt puis au cas ou ai eneye alors on essate de voir ce que nous allons faire avec vile njo bitu bina endekaka but as yiu can see I am now finishing this shit and I hope It will not take too long to be modifierd, isn't it.",
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          OrderButton(
            size: size,
            press: () {},
          ),
        ],
      ),
    );
  }
}
