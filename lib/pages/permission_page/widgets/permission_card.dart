import '../../../utils/constants.dart';
import './permission_detail.dart';
import './permission_header.dart';
import 'package:flutter/material.dart';

class PermissionsCard extends StatelessWidget {
  const PermissionsCard({
    Key? key,
    required this.isMandatory,
    required this.prefix,
    required this.heading,
    required this.subheading,
  }) : super(key: key);
  final bool isMandatory;
  final IconData prefix;
  final String heading;
  final String subheading;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: padding * 2),
      child: Column(
        children: [
          if (isMandatory)
            PermissionHeader.mandatory(
              prefix: prefix,
              heading: heading,
            )
          else
            PermissionHeader.notMandatory(
              prefix: prefix,
              heading: heading,
            ),
          const SizedBox(
            height: 8,
          ),
          PermissionDetails(
            subheading: subheading,
          ),
        ],
      ),
    );
  }
}
