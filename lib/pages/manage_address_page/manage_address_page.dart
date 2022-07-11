import 'package:cred/pages/manage_address_page/widgets/address_card.dart';
import 'package:cred/pages/manage_address_page/widgets/header.dart';
import 'package:cred/pages/manage_devices_page/widgets/device_card.dart';
import '../../common_components/header.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class ManageAddressPage extends StatefulWidget {
  const ManageAddressPage({Key? key}) : super(key: key);

  @override
  State<ManageAddressPage> createState() => _ManageAddressPageState();
}

class _ManageAddressPageState extends State<ManageAddressPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: secondaryColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Header(title: "address"),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    AddressCard(
                      name: "Aryan Aggarwal",
                      address:
                          "ABCDeFDSFDSDFDSFDSFFDSFDSDSFS\nSDFFFFFFFASDASDDAS\nASDDDDDDDDDDDDDDDDDDDDDDddd\nASDDDDDDDDDDDDDdsddddddddddddddd",
                      mobile: "1234567890",
                      isHome: true,
                    ),
                    AddressCard(
                      name: "Aryan Aggarwal",
                      address:
                          "SDDDDDDDDDDDDDDDDDDDDDDddd\nASDDDDDDDDDDDDDdsddddddddddddddd",
                      mobile: "1234567890",
                      isHome: false,
                    ),
                    AddressCard(
                      name: "Aryan Aggarwal",
                      address:
                          "ASDASDsdkfjaslkdjalskd;lasd\nSDDDDDDDDDDDDDDDDDDDDDDddd\nASDDDDDDDDDDDDDdsddddddddddddddd",
                      mobile: "1234567890",
                      isHome: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
