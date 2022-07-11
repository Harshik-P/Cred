import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatefulWidget {
  const AddressCard({
    Key? key,
    required this.name,
    required this.address,
    required this.mobile,
    required this.isHome,
  }) : super(key: key);
  final String name, address, mobile;
  final bool isHome;
  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  late double buttonWidth;

  @override
  Widget build(BuildContext context) {
    buttonWidth = MediaQuery.of(context).size.width * 0.9;

    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 70),
        // height: 200,
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
                  // height: 209,
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
              // top: 209,
            ),
            Positioned(
              child: Transform(
                origin: const Offset(0, 0),
                transform: Matrix4.skewY(0.5),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 70),
                  width: 6,
                  // height: 209.0,
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
            widget.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: padding,
          ),
          Text(
            widget.address,
            style: const TextStyle(
              color: subheadingColor,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: padding,
          ),
          Text(
            "mobile: +${widget.mobile}",
            style: const TextStyle(
              color: subheadingColor,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: padding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.edit_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      side: BorderSide(
                        color: subheadingColor,
                      ),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size.zero,
                  ),
                  elevation: MaterialStateProperty.all(0),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      vertical: padding / 2,
                      horizontal: padding / 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: padding,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.delete_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                  elevation: MaterialStateProperty.all(0),
                  minimumSize: MaterialStateProperty.all(
                    Size.zero,
                  ),
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      side: BorderSide(
                        color: subheadingColor,
                      ),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      vertical: padding / 2,
                      horizontal: padding / 2,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(padding / 2),
                child: Text(
                  widget.isHome ? "Home" : "Others",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
