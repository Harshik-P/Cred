import 'package:flutter/material.dart';
import 'constants.dart';
import './privilege_card_widget.dart';

class ExclusiveAccessCredCashWid extends StatefulWidget {
  const ExclusiveAccessCredCashWid({Key? key}) : super(key: key);

  @override
  State<ExclusiveAccessCredCashWid> createState() => _ExclusiveAccessCredCashWidState();
}

class _ExclusiveAccessCredCashWidState extends State<ExclusiveAccessCredCashWid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: const Text(
            "you've exclusive access to \u{20B9}2,50,000 on CRED cash",
            style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
        
        const SizedBox(height: 12,),
        
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: const Text(
            "you have unlocked an exclusive CRED member privilege",
            style: TextStyle(
                color: Color.fromRGBO(96, 96, 96, 1),
                fontSize: 14.5,
                fontWeight: FontWeight.bold),
          ),
        ),

        const SizedBox(height: 14,),
       
        SizedBox(
          height: 192,
          child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: MemberPrivilegeDetails.title.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                PrivilegeCard(index: index),
                const SizedBox(width: 15,),
              ],
            );
          },
          ),
        ),
      ],
    );
  }
}