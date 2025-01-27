import 'package:flutter/material.dart';
import 'package:kimbap/colors/colors.dart';
import 'package:kimbap/components/term_info.dart';

import '../models/term.dart';

class NumersPage extends StatelessWidget {
  const NumersPage({super.key});
  final List<TermModel> numbers = const [
    TermModel(
        engWord: 'One', krWord: '일 (il) ', sound: 'sounds/numbers/num1.mp3'),
    TermModel(
        engWord: 'Two', krWord: '이 (i) ', sound: 'sounds/numbers/num2.mp3'),
    TermModel(
        engWord: 'Three', krWord: '삼 (sam) ', sound: 'sounds/numbers/num3.mp3'),
    TermModel(
        engWord: 'Four', krWord: '사 (sa) ', sound: 'sounds/numbers/num4.mp3'),
    TermModel(
        engWord: 'Five', krWord: '오 (o) ', sound: 'sounds/numbers/num5.mp3'),
    TermModel(
        engWord: 'Six', krWord: '육 (yuk)  ', sound: 'sounds/numbers/num6.mp3'),
    TermModel(
        engWord: 'Seven',
        krWord: '칠 (chil) ',
        sound: 'sounds/numbers/num7.mp3'),
    TermModel(
        engWord: 'Eight', krWord: '팔 (pal) ', sound: 'sounds/numbers/num8.mp3'),
    TermModel(
        engWord: 'Nine', krWord: '구 (gu) ', sound: 'sounds/numbers/num9.mp3'),
    TermModel(
        engWord: 'Ten', krWord: '십 (sip) ', sound: 'sounds/numbers/num10.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barColor,
        title: Text('Numbers'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return TermInfo(
            term: numbers[index],
          );
        },
      ),
    );
  }
}
