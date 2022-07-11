import './insight_card.dart';
import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class CreditInsights extends StatelessWidget {
  const CreditInsights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
          InsightCard(
            heading: "on time payments",
            subheading:
                "ensure you make all your payments before the due date to improve your score",
            assetPath: "",
            cardMargin: EdgeInsets.only(left: padding),
          ),
          InsightCard(
            heading: "keep old cards active",
            subheading:
                "total age of your credit activity boosts your credit scores",
            assetPath: "",
            cardMargin: EdgeInsets.symmetric(horizontal: padding / 2),
          ),
          InsightCard(
            heading: "vouchers you",
            subheading: "have won",
            assetPath: "",
            cardMargin: EdgeInsets.only(right: padding),
          ),
        ],
      ),
    );
  }
}
