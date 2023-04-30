import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unieum_mobile/constants/textstyle.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        height: 55,
        child: Row(children: [
          Row(
            children: [
              SvgPicture.asset('assets/user-line.svg'),
              const SizedBox(width: 4),
              const Text(
                '멘티',
                style: CustomTextStyle.h4,
              ),
              const SizedBox(width: 4),
              const Text(
                '황준걸',
                style: CustomTextStyle.h4,
              ),
            ],
          ),
          const SizedBox(width: 16),
          Row(
            children: [
              SvgPicture.asset('assets/change.svg'),
              const SizedBox(width: 5),
              CustomText(
                '멘토로 전환',
                style: CustomTextStyle.h4.copyWith(
                  color: const Color.fromARGB(255, 123, 131, 169),
                ),
              ),
            ],
          ),
        ]));
  }
}
