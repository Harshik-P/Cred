import 'package:flutter/material.dart';



class YellowBorderedButton extends StatefulWidget {
  const YellowBorderedButton({Key? key}) : super(key: key);

  @override
  State<YellowBorderedButton> createState() => _YellowBorderedButtonState();
}

class _YellowBorderedButtonState extends State<YellowBorderedButton> {


  double _bottomHeight = 5;
  double _rightWidth = 5;
  double _mainTop = 0;
  double _mainLeft = 0;

  double width = 150;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _unpressed,
      onTapUp: _pressed,
      onTapCancel:_pressCancel,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 70),
        margin: const EdgeInsets.only(left: 10),
        height: 54,
        width: width,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 70),
              top: _mainTop,
              left: _mainLeft,
              child: Transform(
                origin: const Offset(0, 0),
                transform: Matrix4.skewX(0),
                child: Container(
                  height: 50,
                  width: width-3,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(color:const Color.fromRGBO(212,255,41,10))
                  ),
                  child: const Center(child: Text("Check why", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),)),
                ),
              ),
            ),
              Positioned(
                child: Transform(
                  transform: Matrix4.skewX(0.5),
                  origin: const Offset(0, 0),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 70),
                    height: _bottomHeight,
                    width: width-3,
                    color:const Color.fromRGBO(155,186,30,1)
                  ),
                ),
                left: 1,
                top: 50,
              ),
    
              Positioned(
                child: Transform(
                  origin: const Offset(0, 0),
                  transform: Matrix4.skewY(0.5),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 70),
                    width: _rightWidth,
                    height: 51.0,
                    color: const Color.fromRGBO(212,255,41,1)
                  ),
                ),
                left: width-5,
              ),
          ],
        ),
      ),
    );
  }



  void _pressed(_) {
    setState(() {
      _bottomHeight = 5;
      _rightWidth = 5;
      _mainTop = 0;
      _mainLeft = 0;
    });
  }


  void _pressCancel() {
    setState(() {
      _bottomHeight = 0;
      _rightWidth = 0;
      _mainTop = 3;
      _mainLeft = 3;
    });
  }

  void _unpressed(_) => _pressCancel();



}