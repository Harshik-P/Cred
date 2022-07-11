import 'package:flutter/material.dart';
import './constants.dart';

class RewardsWidget extends StatelessWidget {
  final index;
  const RewardsWidget({Key? key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 230,
      color: JackpotRewardsData.colors[index%2],
      child: Stack(
        children: [
          const Positioned(
            top: 20,
            left: 20,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image(image: AssetImage("images/homepage/cloud.png"),),),
          ),
          const Positioned(
            bottom: 15,
            right: -10,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image(image: AssetImage("images/homepage/cloud.png"),),),
          ),
          const Positioned(
            right: 20,
            top: 60,
            child: SizedBox(
              height: 40,
              width: 40,
              child: Image(image: AssetImage("images/homepage/right_turned_coin.png"),),),
          ),
          const Positioned(
            left: 35,
            bottom: 50,
            child: SizedBox(
              height: 40,
              width: 40,
              child: Image(image: AssetImage("images/homepage/left_turned_coin.png"),),),
          ),
          Positioned.fill(
            top: 130,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(JackpotRewardsData.tagLine[index], textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15 ),),
              ),
            ),
          ),

          Positioned.fill(
            top: 180,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text("\u{20B9}${JackpotRewardsData.amount[index]}", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold ),),
              ),
            ),
          ),          
        ],
      ),
    );
  }
}