import 'package:cred/pages/manage_account_page/widgets/bullet_point.dart';
import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class EmailBottomSheet extends StatelessWidget {
  const EmailBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.45,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(
              padding,
              padding * 2,
              padding,
              padding,
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "YOUR EMAIL ADDRESS",
                  style: TextStyle(
                    color: subheadingColor,
                  ),
                ),
                const Text(
                  "aryan@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: padding,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Edit",
                    style: TextStyle(
                      color: Colors.black,
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
                        horizontal: padding * 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: subheadingColor,
          ),
          Padding(
            padding: const EdgeInsets.all(padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BulletPoint(
                  text:
                      "this is your primary email address for communications from CRED",
                ),
                BulletPoint(
                  text:
                      "you'll receive payment reminders, account updates, and other important notifications",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
