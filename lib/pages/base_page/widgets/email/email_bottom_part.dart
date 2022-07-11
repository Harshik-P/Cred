import '../../../../pages/common_components/button/custom_button.dart';
import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class EmailBottomPart extends StatefulWidget {
  const EmailBottomPart(
      {Key? key, required this.emailEntered, required this.callback})
      : super(key: key);
  final bool emailEntered;
  final StringCallback callback;

  @override
  State<EmailBottomPart> createState() => _EmailBottomPartState();
}

class _EmailBottomPartState extends State<EmailBottomPart> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: 10,
                  ),
                  const Text(
                    "enable whatsapp",
                    style: headingStyle,
                  ),
                  const Text(
                    "permissions",
                    style: headingStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "to receive updates about payments.",
                    style: subheadingStyle,
                  ),
                  const Text(
                    "bank charges, rewards & other alerts.",
                    style: subheadingStyle,
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.black,
                  child: Image(
                    image: AssetImage("assets/whatsapp-brand-logo.png"),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            buttonSize: ButtonSize.large,
            buttonActivity: ButtonActivity.initial,
            buttonState: widget.emailEntered && isChecked
                ? ButtonState.enabled
                : ButtonState.disabled,
            title: "Continue",
            callback: (val) {
              setState(() {
                widget.callback(val);
              });
            },
          ),
        ],
      ),
    );
  }
}
