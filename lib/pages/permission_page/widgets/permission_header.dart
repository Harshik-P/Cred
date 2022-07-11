import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

enum Mandatory { mandatory, notMandatory }

class PermissionHeader extends StatelessWidget {
  final Mandatory isMandatory;

  const PermissionHeader.mandatory(
      {Key? key, required this.heading, required this.prefix})
      : isMandatory = Mandatory.mandatory,
        super(key: key);

  const PermissionHeader.notMandatory(
      {Key? key, required this.heading, required this.prefix})
      : isMandatory = Mandatory.notMandatory,
        super(key: key);

  final String heading;
  final IconData prefix;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.only(right: padding),
          decoration: const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            prefix,
            color: headingColor,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: padding),
          child: Text(
            heading,
            style: const TextStyle(
              color: headingColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (isMandatory == Mandatory.mandatory)
          Container(
            color: const Color.fromARGB(255, 76, 76, 76),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: const Text(
              "Mandatory",
              style: TextStyle(color: headingColor, fontSize: 10),
            ),
          ),
      ],
    );
  }
}
