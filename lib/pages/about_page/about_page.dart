import '../../common_components/header.dart';
import '../payment_page/widgets/option_card.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                        "about",
                        style: headingStyle,
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
                      heading: "terms & conditions",
                      subheading: "",
                    ),
                    OptionCard(
                      heading: "privacy policy",
                      subheading: "",
                    ),
                    OptionCard(
                      heading: "security",
                      subheading: "",
                    ),
                    OptionCard(
                      heading: "google api disclosure",
                      subheading: "",
                    ),
                    OptionCard(
                      heading: "open source licenses",
                      subheading: "",
                    ),
                    OptionCard(
                      heading: "upi faqs & grievances",
                      subheading: "",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
