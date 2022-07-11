import 'package:flutter/material.dart';
import '../../../common_components/yellow_bordered_button.dart';

class ExcitingOffersOnBrands extends StatelessWidget {
  const ExcitingOffersOnBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(58, 27, 132, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(image: AssetImage("images/homepage/redeem_cred_coins_earned.png")),
          SizedBox(
            height: 10,
          ),
          Text(
            "redeem CRED coins earned",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              "unlock offers on your favorite brands with CRED pay",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(189, 181, 213, 1),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 45),
          YellowBorderedButton(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
