import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromRGBO(166, 177, 187, 1);
const Color kBackground = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(21, 181, 114, 1);

// Lets replace all static sizes
const kPadding = 20.0;
const kMinWidth = 1232.0;
const kMaxWidth = 1137.0;
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
const double kMobileMaxWidth = 650.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
