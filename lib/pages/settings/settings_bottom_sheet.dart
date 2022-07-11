import 'package:cred/pages/settings/widgets/settings_list.dart';
import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class SettingsBottomSheet extends StatefulWidget {
  const SettingsBottomSheet({Key? key}) : super(key: key);

  @override
  State<SettingsBottomSheet> createState() => _SettingsBottomSheetState();
}

class _SettingsBottomSheetState extends State<SettingsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.85,
      padding: const EdgeInsets.fromLTRB(padding, padding * 2, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "SETTINGS",
            style: TextStyle(
              color: subheadingColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: padding,
          ),
          SettingsList(),
        ],
      ),
    );
  }
}
