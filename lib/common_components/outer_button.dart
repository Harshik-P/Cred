import 'package:flutter/material.dart';

class OuterButton extends StatelessWidget {
  const OuterButton({Key? key, required this.disabled}) : super(key: key);

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (!disabled) ? Colors.white : Colors.grey,
        border: Border(
          right: BorderSide(
            width: 3,
            color: (!disabled) ? Colors.grey : Colors.white,
          ),
          bottom: BorderSide(
            width: 3,
            color: (!disabled)
                ? Colors.grey
                : const Color.fromARGB(255, 42, 40, 40),
          ),
        ),
      ),
      width: 150,
      height: 50,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Proceed",
              style: TextStyle(
                color: (!disabled) ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: (!disabled) ? Colors.black : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
