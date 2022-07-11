import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class InsightCard extends StatelessWidget {
  const InsightCard({
    Key? key,
    required this.heading,
    required this.subheading,
    required this.assetPath,
    required this.cardMargin,
  }) : super(key: key);

  final String heading, subheading, assetPath;
  final EdgeInsets cardMargin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(padding),
        margin: cardMargin,
        width: 200,
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.swap_horizontal_circle,
              color: Colors.white,
              size: 60,
            ),
            const SizedBox(
              height: padding,
            ),
            Text(
              heading,
              style: const TextStyle(
                color: headingColor,
                fontSize: 18,
              ),
            ),
            Text(
              subheading,
              style: const TextStyle(color: subheadingColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
