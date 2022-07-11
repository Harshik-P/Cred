import '../../../common_components/threedot_button.dart';
import 'package:flutter/material.dart';

class UpcomingBills extends StatefulWidget {
  const UpcomingBills({Key? key}) : super(key: key);

  @override
  State<UpcomingBills> createState() => _UpcomingBillsState();
}

class _UpcomingBillsState extends State<UpcomingBills> {

  double _bottom_height = 3;
  double _right_width = 6;
  double _main_top = 0;
  double _main_left = 0;

  late double buttonWidth;


  @override
  Widget build(BuildContext context) {

    buttonWidth = MediaQuery.of(context).size.width*0.9;

    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 70),
        height: 215,
        width: buttonWidth,
        child: Stack(
          children: [
            Positioned(
              child: Transform(
                origin: const Offset(0, 0),
                transform: Matrix4.skewX(0),
                child: Container(
                  height: 209,
                  width: buttonWidth-3,
                  color: Colors.white,
                  child: insideCard(),
                ),
              ),
            ),
              Positioned(
                child: Transform(
                  transform: Matrix4.skewX(0.5),
                  origin: const Offset(0, 0),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 70),
                    height: 3,
                    width: buttonWidth-3,
                    color: const Color.fromRGBO(216, 216, 216, 1),
                  ),
                ),
                left: 1,
                top: 209,
              ),
    
              Positioned(
                child: Transform(
                  origin: const Offset(0, 0),
                  transform: Matrix4.skewY(0.5),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 70),
                    width: 6,
                    height: 209.0,
                    color: const Color.fromRGBO(216, 216, 216, 1),
                  ),
                ),
                left: buttonWidth-5,
              ),
          ],
        ),
      ),
    );
  }

 

  Widget insideCard(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("UP POWER - Urban (UPPCL)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 8,),
                Text("1585081000", style: TextStyle(color: Colors.grey, fontSize: 14),),
                Text("Sh Subash Chand Goel", style: TextStyle(color: Colors.grey, fontSize: 14),)
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: SizedBox(
                height: 33,
                width: 33,
                child: Image(image: AssetImage("images/homepage/upccl.png"), fit: BoxFit.fill,),
              ),
            )
          ],),

          const SizedBox(height: 47,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.orange[600],
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(13, 7, 13, 7),
                      child: Text("DUE IN 3 DAYS", style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  const SizedBox(height: 11.5,),
                  const Text("\u{20B9}2,185", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,),)
                ],
              ),
              const ThreeDotsButton(),
            ],
          )
        ],
      ),
    );
  }

}