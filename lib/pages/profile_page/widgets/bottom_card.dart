import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key? key,
    required this.heading,
    required this.subheading,
    required this.clickableText,
    required this.assetPath,
    required this.gotoPage,
  }) : super(key: key);
  final String heading, subheading, clickableText, assetPath;
  final Widget gotoPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding),
      color: Colors.transparent,
      constraints: const BoxConstraints(
        minHeight: 150,
        maxHeight: 175,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.swap_horizontal_circle,
            color: Colors.white,
            size: 80,
          ),
          const SizedBox(
            width: padding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    heading,
                    style: const TextStyle(
                      color: headingColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Text(
                    subheading,
                    style: const TextStyle(
                      color: subheadingColor,
                      height: 1.3,
                      wordSpacing: 3,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => gotoPage),
                      );
                    },
                    child: Text(
                      clickableText,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
