import '../../../../utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OtpBottomPart extends StatefulWidget {
  const OtpBottomPart({Key? key}) : super(key: key);

  @override
  State<OtpBottomPart> createState() => _OtpBottomPartState();
}

class _OtpBottomPartState extends State<OtpBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "by clicking on continue, you are indicating that you",
            style: subheadingStyle,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                    text: "have read and agree to our ",
                    style: subheadingStyle),
                TextSpan(
                  text: "terms of use ",
                  recognizer: TapGestureRecognizer()..onTap = (() {}),
                  style: const TextStyle(
                    color: headingColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationColor: headingColor,
                  ),
                ),
                const TextSpan(text: "& ", style: subheadingStyle),
                TextSpan(
                  text: "privacy ",
                  recognizer: TapGestureRecognizer()..onTap = (() {}),
                  style: const TextStyle(
                    color: headingColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationColor: headingColor,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: "policy.",
              recognizer: TapGestureRecognizer()..onTap = (() {}),
              style: const TextStyle(
                color: headingColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                decoration: TextDecoration.underline,
                decorationColor: headingColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
