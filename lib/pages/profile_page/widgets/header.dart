import 'package:cred/pages/settings/settings_bottom_sheet.dart';

import '../../notifications_page/notifications_page.dart';
import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.keyboard_backspace_sharp,
              color: Colors.white,
              size: 40,
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const NotificationsPage()),
                    ),
                  );
                },
                child: const Icon(Icons.notifications_outlined),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    const CircleBorder(),
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(padding - 6),
                  ),
                  backgroundColor: MaterialStateProperty.all(primaryColor),
                ),
              ),
              const SizedBox(
                width: padding / 3,
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return const SettingsBottomSheet();
                    },
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(padding * 2),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(primaryColor),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(padding - 6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
