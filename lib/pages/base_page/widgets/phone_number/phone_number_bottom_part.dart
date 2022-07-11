import '../../../../pages/common_components/button/custom_button.dart';
import '../../../../utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PhoneNumberBottomPart extends StatefulWidget {
  const PhoneNumberBottomPart(
      {Key? key, required this.phoneNumberEntered, required this.callback})
      : super(key: key);
  final bool phoneNumberEntered;
  final StringCallback callback;

  @override
  State<PhoneNumberBottomPart> createState() => _PhoneNumberBottomPartState();
}

class _PhoneNumberBottomPartState extends State<PhoneNumberBottomPart> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(
              fillColor: MaterialStateProperty.all(Colors.white),
              checkColor: Colors.black,
              side: const BorderSide(color: Colors.white),
              splashRadius: 0,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "you agree to allow cred to check your credit information",
            style: subheadingStyle,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: "with ", style: subheadingStyle),
                TextSpan(
                  text: "RBI approved credit bureaus",
                  recognizer: TapGestureRecognizer()..onTap = (() {}),
                  style: const TextStyle(
                    color: headingColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationColor: headingColor,
                  ),
                ),
                const TextSpan(text: ".", style: subheadingStyle),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "we need to check if you are a credit card holder and are",
            style: subheadingStyle,
          ),
          const Text(
            "above our accepted credit score threshold.it will not impact your credit score.",
            style: subheadingStyle,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            buttonSize: ButtonSize.small,
            buttonActivity: ButtonActivity.initial,
            buttonState: (widget.phoneNumberEntered && isChecked)
                ? ButtonState.enabled
                : ButtonState.disabled,
            title: "Continue",
            callback: (val) {
              setState(() {
                widget.callback(val);
              });
            },
          )
        ],
      ),
    );
  }
}
