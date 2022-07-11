import '../../common_components/header.dart';
import '../manage_account_page/widgets/information_card.dart';
import './widgets/option_card.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class CredProtectPage extends StatefulWidget {
  const CredProtectPage({Key? key}) : super(key: key);

  @override
  State<CredProtectPage> createState() => _CredProtectPageState();
}

class _CredProtectPageState extends State<CredProtectPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                        "manage CRED protect",
                        style: headingStyle,
                      ),
                      SizedBox(
                        height: padding / 2,
                      ),
                      Text(
                        "due date reminders, hidden charge",
                        style: subheadingStyle,
                      ),
                      Text(
                        "alerts, smart statements and",
                        style: subheadingStyle,
                      ),
                      Text(
                        "auto-fetched due amounts",
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
                      heading: "link email ids",
                      subheading: "1 email id linked",
                    ),
                    OptionCard(
                      heading: "whatsapp alerts",
                      subheading: "activated on 1234567890",
                    ),
                  ],
                ),
              ),
              const InformationCard(
                heading:
                    "your data is 100% secure with us. we don't share any of your informations with any third party.",
                subheading: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
