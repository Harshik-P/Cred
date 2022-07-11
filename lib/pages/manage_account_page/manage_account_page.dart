import '../../common_components/header.dart';
import './widgets/information_card.dart';
import './widgets/option_card.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class ManageAccountPage extends StatefulWidget {
  const ManageAccountPage({Key? key}) : super(key: key);

  @override
  State<ManageAccountPage> createState() => _ManageAccountPageState();
}

class _ManageAccountPageState extends State<ManageAccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: secondaryColor,
            child: Column(
              children: [
                const CommonHeader(title: ""),
                Padding(
                  padding: const EdgeInsets.all(padding),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "manage account",
                          style: headingStyle,
                        ),
                        SizedBox(
                          height: padding / 2,
                        ),
                        Text(
                          "manage your account, login details",
                          style: subheadingStyle,
                        ),
                        Text(
                          "and communication preferences",
                          style: subheadingStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: subheadingColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: padding),
                  child: Column(
                    children: const [
                      OptionCard(
                        heading: "email address",
                        subheading:
                            "select email address to receive communications",
                      ),
                      OptionCard(
                        heading: "manage devices",
                        subheading:
                            "review devices that you're currently logged in",
                      ),
                      OptionCard(
                        heading: "logout",
                        subheading: "",
                      ),
                    ],
                  ),
                ),
                const InformationCard(
                  heading:
                      "your data is 100% secure with us. we don't share any of your informations with any third party.",
                  subheading: "",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
