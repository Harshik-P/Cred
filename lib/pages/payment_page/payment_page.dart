import '../../common_components/header.dart';
import '../manage_account_page/widgets/information_card.dart';
import './widgets/option_card.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                        "payment settings",
                        style: headingStyle,
                      ),
                      SizedBox(
                        height: padding / 2,
                      ),
                      Text(
                        "manage your payment method here",
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
                      heading: "manage your upi account",
                      subheading: "",
                    ),
                    OptionCard(
                      heading: "instant refund",
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
    );
  }
}
