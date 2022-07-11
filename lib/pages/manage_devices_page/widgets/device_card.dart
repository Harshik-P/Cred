import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({
    Key? key,
    required this.deviceName,
    required this.lastSeen,
    required this.firstLogin,
  }) : super(key: key);
  final String deviceName, lastSeen, firstLogin;
  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  // final double _bottom_height = 3;
  // final double _right_width = 6;
  // final double _main_top = 0;
  // final double _main_left = 0;

  late double buttonWidth;

  @override
  Widget build(BuildContext context) {
    buttonWidth = MediaQuery.of(context).size.width * 0.9;

    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 70),
        height: 200,
        margin: const EdgeInsets.all(
          padding,
        ),
        width: buttonWidth,
        child: Stack(
          children: [
            Positioned(
              child: Transform(
                origin: const Offset(0, 0),
                transform: Matrix4.skewX(0),
                child: Container(
                  height: 209,
                  width: buttonWidth - 3,
                  color: Colors.white,
                  child: insideCard(),
                ),
              ),
            ),
            Positioned(
              child: Transform(
                transform: Matrix4.skewX(0.5),
                origin: const Offset(0, 0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 70),
                  height: 3,
                  width: buttonWidth - 3,
                  color: const Color.fromRGBO(216, 216, 216, 1),
                ),
              ),
              left: 1,
              top: 209,
            ),
            Positioned(
              child: Transform(
                origin: const Offset(0, 0),
                transform: Matrix4.skewY(0.5),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 70),
                  width: 6,
                  height: 209.0,
                  color: const Color.fromRGBO(216, 216, 216, 1),
                ),
              ),
              left: buttonWidth - 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget insideCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: padding * 2,
        horizontal: padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.deviceName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: padding,
          ),
          Text(
            "last seen ${widget.lastSeen}",
            style: const TextStyle(
              color: subheadingColor,
            ),
          ),
          Text(
            "first login on ${widget.firstLogin}",
            style: const TextStyle(color: subheadingColor),
          ),
          const SizedBox(
            height: padding,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Logout",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                ),
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
    );
  }
}
