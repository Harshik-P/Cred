import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: padding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '\u2022',
            style: TextStyle(
              fontSize: 16,
              height: 1.55,
            ),
          ),
          const SizedBox(
            width: padding,
          ),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.left,
              softWrap: true,
              style: const TextStyle(
                color: subheadingColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
