import 'package:flutter/material.dart';
import 'package:unieum_mobile/components/title_with_subtitle.dart';
import 'package:unieum_mobile/constants/textstyle.dart';
import 'components/answer_box.dart';
import 'components/header.dart';
import 'components/user_info.dart';
import 'config/palette.dart';

import 'components/bottom_nav.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final double statusBarHeight = MediaQuery.of(context).padding.top;
    return MaterialApp(
      theme:
          ThemeData(fontFamily: 'Pretendard', primarySwatch: Palette.mainColor),
      home: const Scaffold(
        //body
        body: BodyWidget(),
        //bottomNavbar
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // TODO 기기의 상단바 높이 받아와서 그만큼 띄우기
      children: [
        const SizedBox(
          height: 50,
        ),
        //Header
        const Header(),
        //Profile
        const UserInfo(),
        //feeds
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleWithSubtitle(
                title: '선배의 최근 답장', subtitle: 'n개의 질문편지의 답장을 기다리고 있어요'),
            SizedBox(
              height: 20,
            ),
            AnswerBox(
                name: '황준걸',
                department: '글로벌미디어학부',
                number: '19학번',
                tag: '#프로그래밍 #디자인'),
            SizedBox(
              height: 14,
            ),
            AnswerBox(
                name: '홍길동',
                department: '컴퓨터공학과',
                number: '13학번',
                tag: '#프로그래밍 #파이썬'),
          ],
        ),
        const SizedBox(height: 49),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWithSubtitle(
                title: '추천클래스', subtitle: '멘토에게 클래스 추천을 해보세요!'),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 244, 255),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  CustomText(
                    '선배에게 강의를 듣고 싶은 내용이 있나요? \n유니음에게 알려주세요!',
                    style: CustomTextStyle.b1.copyWith(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  const CustomText('클래스 요청하기', style: CustomTextStyle.b1B),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
