import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({
    Key? key,
    required this.text,
    required this.timeAgo,
    required this.buttonText,
  }) : super(key: key);
  final String text, timeAgo, buttonText;

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: padding * 2,
        horizontal: padding,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: subheadingColor,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.swap_horizontal_circle_outlined,
            color: primaryColor,
            size: 35,
          ),
          const SizedBox(
            width: padding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: padding / 2,
                ),
                Text(
                  widget.timeAgo,
                  style: const TextStyle(
                    color: subheadingColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: padding,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    widget.buttonText,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black,
                    ),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        vertical: padding,
                        horizontal: padding * 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
