import 'package:flutter/material.dart';

import '../constants/textstyle.dart';

class TitleWithSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleWithSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 17, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title,
            style: CustomTextStyle.h1,
          ),
          const SizedBox(height: 7),
          CustomText(subtitle, style: CustomTextStyle.b1)
        ],
      ),
    );
  }
}
