import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class LearnMore extends StatelessWidget {
  const LearnMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: padding),
      padding: const EdgeInsets.symmetric(
        vertical: padding * 2,
        horizontal: padding,
      ),
      height: 200,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: subheadingColor,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "curiosity improves credit scores",
            style: headingStyle,
          ),
          const SizedBox(
            height: padding / 2,
          ),
          const Expanded(
            child: Text(
              "learn more about your credit score to know what works and secure your finanical health",
              style: subheadingStyle,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "View FAQs",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: padding,
                  horizontal: padding * 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
