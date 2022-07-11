import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class CredCollectibleCard extends StatelessWidget {
  const CredCollectibleCard({
    Key? key,
    required this.amount,
    required this.name,
    required this.assetPath,
    required this.isVoucher,
    required this.cardMargin,
  }) : super(key: key);

  final String amount, name, assetPath;
  final bool isVoucher;
  final EdgeInsets cardMargin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(padding),
        margin: cardMargin,
        width: 150,
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.swap_horizontal_circle,
              color: Colors.white,
            ),
            const SizedBox(
              height: padding,
            ),
            Text(
              amount,
              style: TextStyle(
                color: isVoucher ? subheadingColor : headingColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: subheadingColor,
                  ),
                ),
                const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
