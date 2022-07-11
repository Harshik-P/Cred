import 'package:cred/pages/manage_address_page/manage_address_page.dart';

import '../../about_page/about_page.dart';
import '../../cred_protect_page/cred_protect_page.dart';
import '../../manage_account_page/manage_account_page.dart';
import '../../payment_page/payment_page.dart';
import './setting_card.dart';
import '../../transaction_history_page/transaction_history_page.dart';
import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        SettingCard(
          heading: "transaction history",
          subheading: "Find all your projects here",
          gotoPage: TransactionHisotryPage(),
        ),
        SettingCard(
          heading: "manage CRED protect",
          subheading: "linked email id's and whatsapp",
          gotoPage: CredProtectPage(),
        ),
        SettingCard(
          heading: "manage account",
          subheading: "login details and communication preferences",
          gotoPage: ManageAccountPage(),
        ),
        SettingCard(
          heading: "payment settings",
          subheading: "manage your payment methods",
          gotoPage: PaymentPage(),
        ),
        SettingCard(
          heading: "manage addresses",
          subheading: "all your addresses are here",
          gotoPage: ManageAddressPage(),
        ),
        SettingCard(
          heading: "support",
          subheading: "",
          gotoPage: TransactionHisotryPage(),
        ),
        SettingCard(
          heading: "about",
          subheading: "",
          gotoPage: AboutPage(),
        ),
      ],
    );
  }
}
