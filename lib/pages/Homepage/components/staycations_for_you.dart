import 'package:flutter/material.dart';

class StaycationsForYou extends StatelessWidget {
  const StaycationsForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18.5, 25, 10, 15),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "pack your bags.",
                    style:
                        TextStyle(fontSize: 19.5, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "we are taking you places.",
                    style:
                        TextStyle(fontSize: 19.5, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18.5, 0, 150, 18),
            child: Text(
              "handpicked staycations with member-executive perks await",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.5),
            child: Container(
              width: 160,
              height: 40,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Explore CRED travel",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  SizedBox(
                    width: 13.5,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
