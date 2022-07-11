import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key,
    required this.heading,
    required this.subheading,
  }) : super(key: key);

  final String heading, subheading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: padding,
          vertical: padding * 2,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: padding,
          vertical: padding * 3,
        ),
        color: primaryColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.swap_horizontal_circle_outlined,
              color: subheadingColor,
              size: 30,
            ),
            const SizedBox(
              width: padding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                      color: headingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (subheading != "")
                    const SizedBox(
                      height: padding / 2,
                    ),
                  if (subheading != "")
                    Text(
                      subheading,
                      style:
                          const TextStyle(color: subheadingColor, fontSize: 14),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
