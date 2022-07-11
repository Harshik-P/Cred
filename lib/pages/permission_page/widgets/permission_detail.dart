import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class PermissionDetails extends StatelessWidget {
  const PermissionDetails({Key? key, required this.subheading})
      : super(key: key);

  final String subheading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.only(right: padding),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.abc,
            color: Colors.transparent,
          ),
        ),
        Expanded(
          child: Text(
            subheading,
            style: const TextStyle(
              color: subheadingColor,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
