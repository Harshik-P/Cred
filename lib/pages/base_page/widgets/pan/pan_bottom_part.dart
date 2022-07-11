import 'package:cred/pages/layout.dart';

import '../../../../pages/common_components/button/custom_button.dart';
import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class PanBottomPart extends StatefulWidget {
  const PanBottomPart(
      {Key? key, required this.panEntered, required this.callback})
      : super(key: key);
  final bool panEntered;
  final StringCallback callback;

  @override
  State<PanBottomPart> createState() => _PanBottomPartState();
}

class _PanBottomPartState extends State<PanBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomButton(
          buttonSize: ButtonSize.small,
          buttonActivity: ButtonActivity.initial,
          buttonState:
              widget.panEntered ? ButtonState.enabled : ButtonState.disabled,
          title: "Next",
          route: const Layout(),
          callback: (val) {
            setState(() {
              widget.callback(val);
            });
          },
        ),
      ],
    );
  }
}
