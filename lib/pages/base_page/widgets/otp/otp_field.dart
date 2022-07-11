import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class OtpContainer extends StatefulWidget {
  const OtpContainer({
    Key? key,
    required this.phoneNumber,
    required this.callback,
  }) : super(key: key);
  final StringCallback callback;
  final String phoneNumber;
  @override
  State<OtpContainer> createState() => _OtpContainerState();
}

class _OtpContainerState extends State<OtpContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "we have sent you",
            style: headingStyle,
          ),
          const Text(
            "an OTP",
            style: headingStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "enter the 4 digit OTP sent on ${widget.phoneNumber}",
            style: subheadingStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "to proceed",
            style: subheadingStyle,
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              setState(() {
                widget.callback(value);
              });
            },
            maxLength: 4,
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
              hintText: "OTP",
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
