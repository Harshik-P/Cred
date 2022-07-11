import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  final title;
  const ChipsWidget({Key? key, @required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(40, 40, 43, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(31, 7, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
          left: 1,
          top: 3,
          child: Container(
            height: 21,
            width: 21,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const Image(
              image: AssetImage("images/homepage/dollar.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}