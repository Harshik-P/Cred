import 'package:flutter/material.dart';
import './constants.dart';

class PrivilegeCard extends StatelessWidget {
  final index;
  const PrivilegeCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192,
      width: 190,
      color: const Color.fromRGBO(23, 23, 23, 1),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Icon(
                MemberPrivilegeDetails.icons[index],
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 150,
                child: Text(
                  MemberPrivilegeDetails.title[index],
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                )),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 180,
              child: Text(
                MemberPrivilegeDetails.subTitles[index],
                style: const TextStyle(
                  color: Color.fromRGBO(128, 128, 128, 1),
                  fontSize: 13.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}