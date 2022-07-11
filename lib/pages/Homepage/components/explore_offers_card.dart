import 'package:flutter/material.dart';
import 'constants.dart';


class ExploreOffersCard extends StatelessWidget {
  final index;
  const ExploreOffersCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      color: const Color.fromRGBO(23, 23, 23, 1),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: Icon(
                ExploreOffersData.icons[index],
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                ExploreOffersData.title[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                ExploreOffersData.subTitles[index],
                style: const TextStyle(
                  color: Color.fromRGBO(128, 128, 128, 1),
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}