import '../../../../pages/common_components/button/custom_button.dart';
import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class DobBottomPart extends StatefulWidget {
  const DobBottomPart(
      {Key? key, required this.dobEntered, required this.callback})
      : super(key: key);
  final bool dobEntered;
  final StringCallback callback;

  @override
  State<DobBottomPart> createState() => _DobBottomPartState();
}

class _DobBottomPartState extends State<DobBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomButton(
          buttonSize: ButtonSize.small,
          buttonActivity: ButtonActivity.initial,
          buttonState:
              widget.dobEntered ? ButtonState.enabled : ButtonState.disabled,
          title: "Proceed",
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
