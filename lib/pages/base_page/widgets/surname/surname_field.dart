import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class SurnameContainer extends StatefulWidget {
  const SurnameContainer({Key? key, required this.callback}) : super(key: key);
  final StringCallback callback;
  @override
  State<SurnameContainer> createState() => _SurnameContainerState();
}

class _SurnameContainerState extends State<SurnameContainer> {
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
            "great! tell us your last",
            style: headingStyle,
          ),
          const Text(
            "name",
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
              hintText: "Last name",
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
