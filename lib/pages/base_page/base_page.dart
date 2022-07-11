import './widgets/pan/pan_bottom_part.dart';
import './widgets/pan/pan_field.dart';
import '../permission_page/permission_page.dart';
import 'widgets/otp/otp_bottom_part.dart';
import 'widgets/otp/otp_field.dart';
import 'widgets/email/email_bottom_part.dart';
import 'widgets/email/email_field.dart';
import 'widgets/phone_number/phone_number_bottom_part.dart';
import 'widgets/phone_number/phone_number_field.dart';
import 'widgets/dob/dob_bottom_part.dart';
import 'widgets/first_name/first_name_bottom_part.dart';
import 'widgets/first_name/first_name_field.dart';
import 'widgets/surname/surname_bottom_part.dart';
import 'widgets/surname/surname_field.dart';
import 'widgets/dob/dob_field.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  String phoneNumber = "";
  bool phoneNumberEntered = false;
  bool firstNameEntered = false;
  bool lastNameEntered = false;
  bool emailEntered = false;
  bool dobEntered = false;
  bool panEntered = false;
  int selectedIndex = 0;
  PageController pageController = PageController();

  void _onItemTapped(int index) {
    setState(
      () {
        selectedIndex = index;
        pageController.animateToPage(index,
            duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(padding),
              color: primaryColor,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (index) {
                  setState(
                    () {
                      selectedIndex = index;
                    },
                  );
                },
                children: [
                  PhoneNumberContainer(
                    callback: (value) => setState(
                      () {
                        if (value.length == 10) {
                          phoneNumberEntered = true;
                          phoneNumber = value;
                        } else {
                          phoneNumberEntered = false;
                        }
                      },
                    ),
                  ),
                  OtpContainer(
                    phoneNumber: phoneNumber,
                    callback: (value) => setState(
                      () {
                        if (value.length == 4) {
                          _onItemTapped(selectedIndex + 1);
                        }
                      },
                    ),
                  ),
                  FirstNameContainer(
                    callback: (value) => setState(
                      () {
                        if (value.isEmpty) {
                          firstNameEntered = false;
                        } else {
                          firstNameEntered = true;
                        }
                      },
                    ),
                  ),
                  SurnameContainer(callback: (value) {
                    if (value == "-1") {
                      _onItemTapped(selectedIndex - 1);
                    } else {
                      setState(
                        () {
                          if (value.isEmpty) {
                            lastNameEntered = false;
                          } else {
                            lastNameEntered = true;
                          }
                        },
                      );
                    }
                  }),
                  EmailContainer(callback: (value) {
                    setState(() {
                      if (value == "-1") {
                        _onItemTapped(selectedIndex - 1);
                      } else {
                        setState(
                          () {
                            if (value.isEmpty) {
                              emailEntered = false;
                            } else {
                              emailEntered = true;
                            }
                          },
                        );
                      }
                    });
                  }),
                  DOBContainer(
                    callback: (value) => setState(
                      () {
                        if (value.length == 10) {
                          dobEntered = true;
                        } else {
                          dobEntered = false;
                        }
                      },
                    ),
                  ),
                  PanContainer(
                    callback: (value) => setState(
                      () {
                        if (value.length == 10) {
                          panEntered = true;
                        } else {
                          panEntered = false;
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: padding,
                vertical: padding * 2,
              ),
              color: secondaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (selectedIndex == 0)
                    PhoneNumberBottomPart(
                      phoneNumberEntered: phoneNumberEntered,
                      callback: (val) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PermissionsPage(),
                          ),
                        );
                        _onItemTapped(selectedIndex + 1);
                      },
                    ),
                  if (selectedIndex == 1) const OtpBottomPart(),
                  if (selectedIndex == 2)
                    FirstNameBottomPart(
                      firstNameEntered: firstNameEntered,
                      callback: (val) => _onItemTapped(
                        selectedIndex + 1,
                      ),
                    ),
                  if (selectedIndex == 3)
                    SurnameBottomPart(
                      lastNameEntered: lastNameEntered,
                      callback: (val) => _onItemTapped(
                        selectedIndex + 1,
                      ),
                    ),
                  if (selectedIndex == 4)
                    EmailBottomPart(
                      emailEntered: emailEntered,
                      callback: (val) => _onItemTapped(
                        selectedIndex + 1,
                      ),
                    ),
                  if (selectedIndex == 5)
                    DobBottomPart(
                      dobEntered: dobEntered,
                      callback: (val) => _onItemTapped(
                        selectedIndex + 1,
                      ),
                    ),
                  if (selectedIndex == 6)
                    PanBottomPart(panEntered: panEntered, callback: (val) {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
