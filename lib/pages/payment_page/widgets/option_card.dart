import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.heading,
    required this.subheading,
  }) : super(key: key);

  final String heading, subheading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(padding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            const SizedBox(
              width: padding * 4,
            ),
            const Icon(
              Icons.keyboard_arrow_right,
              color: headingColor,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
