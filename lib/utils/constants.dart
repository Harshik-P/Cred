import 'package:flutter/material.dart';

const double padding = 16.0;
const Color primaryColor = Color.fromARGB(255, 20, 20, 20);
const Color secondaryColor = Color.fromARGB(255, 14, 14, 14);
const Color headingColor = Colors.white;
const Color subheadingColor = Colors.grey;
const Color inputColor = Color.fromARGB(255, 89, 89, 89);
const TextStyle headingStyle =
    TextStyle(color: headingColor, fontSize: 20, fontWeight: FontWeight.bold);
const TextStyle subheadingStyle =
    TextStyle(color: subheadingColor, fontSize: 14);

typedef StringCallback = void Function(String val);
