import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class EmailContainer extends StatefulWidget {
  const EmailContainer({Key? key, required this.callback}) : super(key: key);
  final StringCallback callback;
  @override
  State<EmailContainer> createState() => _EmailContainerState();
}

class _EmailContainerState extends State<EmailContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            child: const Icon(
              Icons.keyboard_backspace,
              color: headingColor,
              size: 30,
            ),
            onTap: () {
              setState(() {
                widget.callback("-1");
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "give us your",
            style: headingStyle,
          ),
          const Text(
            "email",
            style: headingStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "your credit report will be sent to this email",
            style: subheadingStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "ID",
            style: subheadingStyle,
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              setState(() {
                widget.callback(value);
              });
            },
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
              hintText: "abc@xyz.com",
              hintStyle: TextStyle(
                color: inputColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            keyboardType: TextInputType.name,
          ),
        ],
      ),
    );
  }
}
