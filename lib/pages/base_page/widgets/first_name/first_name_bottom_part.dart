import '../../../../pages/common_components/button/custom_button.dart';
import '../../../../utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FirstNameBottomPart extends StatefulWidget {
  const FirstNameBottomPart(
      {Key? key, required this.firstNameEntered, required this.callback})
      : super(key: key);
  final bool firstNameEntered;
  final StringCallback callback;

  @override
  State<FirstNameBottomPart> createState() => _FirstNameBottomPartState();
}

class _FirstNameBottomPartState extends State<FirstNameBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            buttonSize: ButtonSize.small,
            buttonActivity: ButtonActivity.initial,
            buttonState: widget.firstNameEntered
                ? ButtonState.enabled
                : ButtonState.disabled,
            title: "Continue",
            callback: (val) {
              setState(() {
                widget.callback(val);
              });
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
