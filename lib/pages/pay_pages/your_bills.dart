import '../../common_components/threedot_button.dart';
import 'package:flutter/material.dart';

class YourBills extends StatefulWidget {
  const YourBills({Key? key}) : super(key: key);

  @override
  State<YourBills> createState() => _YourBillsState();
}

class _YourBillsState extends State<YourBills> {

  double _bottom_height = 3;
  double _right_width = 6;
  double _main_top = 0;
  double _main_left = 0;

  late double buttonWidth;
  late double buttonHeight;

  @override
  Widget build(BuildContext context) {

    buttonWidth = MediaQuery.of(context).size.width*0.57;
    buttonHeight = 310;


    return SizedBox(
      height: buttonHeight,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index){
          return Row(
            children: [
              GestureDetector(
              child: AnimatedContainer(
              duration: const Duration(milliseconds: 70),
              height: buttonHeight,
              width: buttonWidth,
              child: Stack(
                children: [
                  Positioned(
                    child: Transform(
                      origin: const Offset(0, 0),
                      transform: Matrix4.skewX(0),
                      child: Container(
                        height: buttonHeight-6,
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
                      top: buttonHeight-6,
                    ),
      
                    Positioned(
                      child: Transform(
                        origin: const Offset(0, 0),
                        transform: Matrix4.skewY(0.5),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 70),
                          width: 6,
                          height: buttonHeight-6,
                          color: const Color.fromRGBO(216, 216, 216, 1),
                        ),
                      ),
                      left: buttonWidth-5,
                    ),
                ],
              ),
        ),
      ),
      const SizedBox(width: 12,),
            ],
          );
        }
      ),
    );
  }


  Widget insideCard(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 35, 15, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("UP Power - Urban (UPPCL)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.8),),
                    SizedBox(height: 10,),
                    Text("Sh Subash Chand Goel", style: TextStyle(color: Colors.grey, fontSize: 12.5),),
                    Text("1585081000", style: TextStyle(color: Colors.grey, fontSize: 12.5),),
                  ],
                ),),

              const Padding(
              padding: EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 33,
                width: 33,
                child: Image(image: AssetImage("images/upccl.png"), fit: BoxFit.fill,),
              ),
            ),
            ],
          ),

          const SizedBox(height: 33,),

          Container(
                    color: Colors.orange[600],
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(13, 7, 13, 7),
                      child: Text("DUE IN 3 DAYS", style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  const SizedBox(height: 11.5,),
                  const Text("\u{20B9}2,185", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,),),

                  const SizedBox(height: 20,),
                  const ThreeDotsButton(),
        ],
      ),
    );
  }


}