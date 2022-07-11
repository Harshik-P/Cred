import 'package:flutter/material.dart';

class OfferWithCredPay extends StatelessWidget {
  const OfferWithCredPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(93, 63, 211, 1),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 46, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 150, 10),
              child: Text(
                "redeem your CRED coins on top merchants",
                style: TextStyle(color: Colors.white, fontSize: 17.5),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 150, 15),
              child: Text(
                "grab up to 50% on ordering from top merchants with CRED pay",
                style: TextStyle(
                    color: Color.fromRGBO(189, 181, 213, 1), fontSize: 14),
              ),
            ),
            Container(
              color: Colors.white,
              height: 33,
              width: 95,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Claim now",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
