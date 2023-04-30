import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/textstyle.dart';

class AnswerBox extends StatelessWidget {
  final String name;
  final String department;
  final String number;
  final String tag;

  const AnswerBox({
    super.key,
    required this.name,
    required this.department,
    required this.number,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 244, 255),
        border: Border.all(
          color: const Color.fromARGB(255, 109, 148, 235),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/user-line.svg'),
              const SizedBox(width: 7),
              CustomText(
                name,
                style: CustomTextStyle.b1,
              ),
              const SizedBox(width: 7),
              CustomText(
                department,
                style: CustomTextStyle.b1,
              ),
              const SizedBox(width: 7),
              CustomText(
                number,
                style: CustomTextStyle.b1,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          CustomText(tag, style: CustomTextStyle.b1B),
          const SizedBox(
            height: 8,
          ),
          const CustomText('답변 보기', style: CustomTextStyle.b1),
        ],
      ),
    );
  }
}
