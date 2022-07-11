import 'package:flutter/material.dart';

class ReferAndEarn extends StatelessWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(93, 63, 211, 1),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Text(
                    "unlock a cashback of up to \u{20B9}1000",
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromRGBO(230, 230, 250, 1),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 70),
                  child: Text(
                    "refer your friend and win a cashback",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(189, 181, 213, 1),),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(22, 15, 22, 15),
                    child: Text(
                      "Win now",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 140,
              width: 100,
              child: Image(
                image: AssetImage("images/homepage/refer_and_earn.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
