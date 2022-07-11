import 'package:cred/common_components/header.dart';
import 'package:cred/pages/transaction_history_page/widgets/transaction_list.dart';
import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class TransactionHisotryPage extends StatelessWidget {
  const TransactionHisotryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            color: secondaryColor,
            child: Column(
              children: const [
                CommonHeader(title: "transaction history"),
                TransactionList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
