import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class FirstNameContainer extends StatefulWidget {
  const FirstNameContainer({Key? key, required this.callback})
      : super(key: key);
  final StringCallback callback;
  @override
  State<FirstNameContainer> createState() => _FirstNameContainerState();
}

class _FirstNameContainerState extends State<FirstNameContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "tell us your first name",
            style: headingStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "this is necessary to calculate your eligibility",
            style: subheadingStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "score",
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
              hintText: "first name",
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
