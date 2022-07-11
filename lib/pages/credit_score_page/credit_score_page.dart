import '../../common_components/header.dart';
import './widgets/credit_insights.dart';
import './widgets/credit_score_card.dart';
import './widgets/learn_more.dart';
import './widgets/refresh_card.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class CreditScorePage extends StatelessWidget {
  const CreditScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: secondaryColor,
            child: Column(
              children: [
                const CommonHeader(
                  title: "",
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "all about",
                        style: headingStyle,
                      ),
                      SizedBox(
                        height: padding / 2,
                      ),
                      Text(
                        "your credit score",
                        style: headingStyle,
                      ),
                      SizedBox(
                        height: padding,
                      ),
                      Text(
                        "get insights and track your credit standing",
                        style: subheadingStyle,
                      ),
                    ],
                  ),
                ),
                const RefreshCard(),
                const CreditScoreCard(),
                const CreditScoreCard(),
                Container(
                  padding: const EdgeInsets.all(padding),
                  margin: const EdgeInsets.only(top: padding),
                  child: Row(
                    children: const [
                      Text(
                        "Insights for you",
                        style: TextStyle(
                          color: subheadingColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const CreditInsights(),
                const LearnMore(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
