import './cred_collectible_card.dart';
import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class CredCollectibles extends StatefulWidget {
  const CredCollectibles({Key? key}) : super(key: key);

  @override
  State<CredCollectibles> createState() => _CredCollectiblesState();
}

class _CredCollectiblesState extends State<CredCollectibles> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
          CredCollectibleCard(
            amount: "89,448",
            name: "CRED coins",
            assetPath: "",
            isVoucher: false,
            cardMargin: EdgeInsets.only(left: padding),
          ),
          CredCollectibleCard(
            amount: "0",
            name: "gems",
            assetPath: "",
            isVoucher: false,
            cardMargin: EdgeInsets.symmetric(horizontal: padding / 2),
          ),
          CredCollectibleCard(
            amount: "vouchers you",
            name: "have won",
            assetPath: "",
            isVoucher: true,
            cardMargin: EdgeInsets.only(right: padding),
          ),
        ],
      ),
    );
  }
}
