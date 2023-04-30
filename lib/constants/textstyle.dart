import 'package:flutter/material.dart';

class CustomText extends Text {
  const CustomText(String data,
      {Key? key, TextStyle? style, TextAlign? textAlign})
      : super(
          data,
          key: key,
          style: style ?? CustomTextStyle.b1,
          textAlign: textAlign,
        );
}

class CustomTextStyle {
  static const TextStyle h1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle h4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle b1 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle b1B = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w800,
  );
}
