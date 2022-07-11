import '../../utils/constants.dart';
import '../../common_components/outer_button.dart';
import './widgets/permission_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PermissionsPage extends StatelessWidget {
  const PermissionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(padding),
          color: secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RichText(
                        text: TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = (() {}),
                          style: const TextStyle(
                            color: Colors.transparent,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            shadows: [
                              Shadow(
                                color: headingColor,
                                offset: Offset(0, -5),
                              ),
                            ],
                            decoration: TextDecoration.underline,
                            decorationColor: headingColor,
                          ),
                          text: "Deny permission",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "we take the",
                    style: headingStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "following permissions",
                    style: headingStyle,
                  ),
                  const SizedBox(
                    height: padding * 2,
                  ),
                  const PermissionsCard(
                    isMandatory: true,
                    prefix: Icons.sim_card_outlined,
                    heading: "phone state permission",
                    subheading:
                        "we need this permission to ensure the SIM card in your phone and your registered phone number match",
                  ),
                  const PermissionsCard(
                    isMandatory: true,
                    prefix: Icons.sms_outlined,
                    heading: "phone state permission",
                    subheading:
                        "we need this permission to activate UPI and send you credit card payment reminders to provide a seamless experience",
                  ),
                  const PermissionsCard(
                    isMandatory: false,
                    prefix: Icons.location_on_outlined,
                    heading: "location permission",
                    subheading:
                        "we need this permission to intelligently surface location specific rewards and alerts",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  OuterButton(disabled: false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
