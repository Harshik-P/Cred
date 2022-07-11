import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class PhoneNumberContainer extends StatefulWidget {
  const PhoneNumberContainer({Key? key, required this.callback})
      : super(key: key);
  final StringCallback callback;
  @override
  State<PhoneNumberContainer> createState() => _PhoneNumberContainerState();
}

class _PhoneNumberContainerState extends State<PhoneNumberContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "give us your",
            style: headingStyle,
          ),
          const Text(
            "mobile number",
            style: headingStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "to apply, we need your mobile number",
            style: subheadingStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "linked to your credit cards",
            style: subheadingStyle,
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              setState(() {
                widget.callback(value);
              });
            },
            maxLength: 10,
            cursorHeight: 30,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            decoration: const InputDecoration(
              counterText: "",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "mobile number",
              hintStyle: TextStyle(
                color: inputColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            keyboardType: TextInputType.phone,
          ),
        ],
      ),
    );
  }
}
