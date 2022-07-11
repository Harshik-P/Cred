import 'package:flutter/material.dart';
import 'package:cred/utils/constants.dart';

//Temporary Header, will need more variables to fit other conditions
class Header extends StatelessWidget {
  const Header({
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
            ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                SizedBox(
                  width: padding,
                ),
                Text(
                  "Add New",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.black,
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  side: BorderSide(
                    color: subheadingColor,
                  ),
                ),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: padding,
                  horizontal: padding,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
