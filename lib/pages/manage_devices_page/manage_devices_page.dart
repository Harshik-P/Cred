import 'package:cred/pages/manage_devices_page/widgets/device_card.dart';

import '../../common_components/header.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class ManageDevicesPage extends StatefulWidget {
  const ManageDevicesPage({Key? key}) : super(key: key);

  @override
  State<ManageDevicesPage> createState() => _ManageDevicesPageState();
}

class _ManageDevicesPageState extends State<ManageDevicesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: secondaryColor,
          child: Column(
            children: [
              const CommonHeader(
                title: "manage devices",
              ),
              ListView(
                shrinkWrap: true,
                children: const [
                  DeviceCard(
                    deviceName: "Oneplus gm1901",
                    lastSeen: "today",
                    firstLogin: "15 Sep 2020",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
