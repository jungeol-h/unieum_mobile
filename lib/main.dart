import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/user_info.dart';
import 'config/palette.dart';

import 'components/bottom_nav.dart';
import 'components/feeds.dart';

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
      home: Scaffold(
        //body
        body: const BodyWidget(),
        //bottomNavbar
        bottomNavigationBar: const BottomNav(),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('새 질문편지 보내기'),
          backgroundColor: const Color.fromARGB(255, 109, 148, 235),
          icon: const Icon(Icons.add),
          onPressed: () {},
        ),
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
      children: const [
        SizedBox(
          height: 50,
        ),
        //Header
        Header(),
        //Profile
        UserInfo(),
        //feeds
        Expanded(child: Feeds()),
      ],
    );
  }
}
