import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class PanContainer extends StatefulWidget {
  const PanContainer({Key? key, required this.callback}) : super(key: key);
  final StringCallback callback;
  @override
  State<PanContainer> createState() => _PanContainerState();
}

class _PanContainerState extends State<PanContainer> {
  final TextEditingController _panController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "finishing up, give us your PAN",
            style: headingStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "additional information helps us fetch",
            style: subheadingStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "accurate credit reports",
            style: subheadingStyle,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _panController,
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
              hintText: "enter here",
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
