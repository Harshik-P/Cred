import 'package:flutter/material.dart';

class ExploreButton extends StatelessWidget {
  final title;
  final width;
  const ExploreButton({Key? key, required this.title, required this.width }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}