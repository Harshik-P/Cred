import 'package:cred/pages/transaction_history_page/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        TransactionCard(
          heading: "rent pay transactions",
          subheading:
              "includes maintenance, security deposit, token amount & more",
        ),
        TransactionCard(
          heading: "education feed payments",
          subheading: "includes college, school and tuition fees",
        ),
        TransactionCard(
          heading: "utility bill payments",
          subheading:
              "includes electricity, gas bill, recharges, insurance & more",
        ),
        TransactionCard(
          heading: "cash EMI payments",
          subheading: "details of your cash repayments",
        ),
        TransactionCard(
          heading: "CRED merchant transactions",
          subheading:
              "includes payments made to merchants outside of CRED using CRED pay",
        ),
        TransactionCard(
          heading: "mint transactions",
          subheading: "your mint investments and withdrawals",
        ),
        TransactionCard(
          heading: "store orders",
          subheading: "track delivery status of your store purchases",
        ),
        TransactionCard(
          heading: "travel bookings",
          subheading: "manage your travel experiences",
        ),
        TransactionCard(
          heading: "coins",
          subheading: "your coin ledger",
        )
      ],
    );
  }
}
