import 'package:flutter/material.dart';

class ThreeDotsButton extends StatefulWidget {
  const ThreeDotsButton({Key? key}) : super(key: key);

  @override
  State<ThreeDotsButton> createState() => _ThreeDotsButtonState();
}

class _ThreeDotsButtonState extends State<ThreeDotsButton> {

  double _top = 0;
  double _left = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _pressed,
      onTapUp: _unpressed,
      onTapCancel: _pressCancel,
      child: SizedBox(
        child: Row(
          children: [
            Container(
              height: 60,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                )
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 4,
                      width: 4,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      height: 4,
                      width: 4,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      height: 4,
                      width: 4,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ),
              Stack(
                children: [
                  const SizedBox(
                    height: 60,
                    width: 150,
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 40),
                    top: _top,
                    left: _left,
                    child: Container(
                    height: 60,
                    width: 150,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text("Pay Now", style: TextStyle(color: Colors.white, fontSize: 15),),
                              SizedBox(width: 27,),
                              Icon(Icons.arrow_forward, color: Colors.white, size: 17,),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          const Text("WIN UP TO \u{20B9}10,000", style: TextStyle(color: Colors.green, fontSize: 10, letterSpacing: 1),)
                        ],
                      ),
                    ),
                                  ),
                  ),]
              ),
            // )
          ],
        ),
      ),
    );
  }

  void _pressed(_) {
    setState(() {
      _top = 5;
      _left = 5;
    });
  }


  void _pressCancel() {
    setState(() {
      _top = 0;
      _left = 0;
    });
  }

  void _unpressed(_) => _pressCancel();


}