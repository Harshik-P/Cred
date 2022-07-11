import '../../../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(padding / 3),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(110),
          ),
          child: CircularText(
            children: [
              TextItem(
                text: Text(
                  "Joined in Jan 2019 . Joined in Jan 2019 .".toUpperCase(),
                  style: const TextStyle(fontSize: 16),
                ),
                space: 8.5,
              ),
            ],
            radius: 100,
          ),
        ),
        Positioned(
          left: 35,
          top: 35,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(90),
            ),
            padding: const EdgeInsets.all(10),
            child: const CircleAvatar(
              radius: 60,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: -10,
          child: ElevatedButton(
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              side: MaterialStateProperty.all(
                const BorderSide(color: Colors.black),
              ),
              shape: MaterialStateProperty.all(
                const CircleBorder(),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.all(padding / 2),
              ),
            ),
          ),
        )
      ],
    );
  }
}
