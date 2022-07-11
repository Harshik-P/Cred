import 'package:flutter/material.dart';
import 'package:cred/utils/constants.dart';

//Temporary Header, will need more variables to fit other conditions
class CommonHeader extends StatelessWidget {
  const CommonHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.keyboard_backspace_sharp,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(
            width: padding,
          ),
          if (title != "")
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
        ],
      ),
    );
  }
}
