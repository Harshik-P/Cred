import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    Key? key,
    required this.heading,
    required this.subheading,
    required this.gotoPage,
  }) : super(key: key);

  final String heading, subheading;
  final Widget gotoPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => gotoPage),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, padding, padding, padding),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: subheadingColor,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.swap_horizontal_circle_outlined,
              color: subheadingColor,
              size: 30,
            ),
            const SizedBox(
              width: padding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (subheading != "")
                    const SizedBox(
                      height: padding / 2,
                    ),
                  if (subheading != "")
                    Text(
                      subheading,
                      style:
                          const TextStyle(color: subheadingColor, fontSize: 14),
                    ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_right_alt,
              color: Colors.black,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
