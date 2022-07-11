import 'package:flutter/material.dart';
import 'constants.dart';
import './explore_offers_card.dart';


class EveryPaymentPaysYouBack extends StatelessWidget {
  const EveryPaymentPaysYouBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 200),
          child: Text(
            "every payment pays you back",
            style: TextStyle(color: Colors.white, fontSize: 21.5),
          ),
        ),
        const SizedBox(
          height: 23,
        ),
        SizedBox(
          height: 192,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ExploreOffersData.title.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  ExploreOffersCard(index: index),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}