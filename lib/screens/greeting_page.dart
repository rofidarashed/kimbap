import 'package:flutter/material.dart';
import 'package:kimbap/colors/colors.dart';
import 'package:kimbap/components/term_info.dart';
import 'package:kimbap/models/term.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});
  final List<TermModel> greetings = const [
    TermModel(
        engWord: 'Hello (formal)',
        krWord: '안녕하세요 (Annyeong haseyo) ',
        sound: 'sounds/greetings/helloformal.mp3'),
    TermModel(
        engWord: 'Hello (informal)',
        krWord: '안녕 (Annyeong) ',
        sound: 'sounds/greetings/helloinformal.mp3'),
    TermModel(
        engWord: 'Greetings everyone',
        krWord: '안녕하세요, 여러분 (Annyeonghaseyo, yeoreobun) ',
        sound: 'sounds/greetings/hieveryone.mp3'),
    TermModel(
        engWord: 'How are you? (formal)',
        krWord: '잘 지내세요? (Jal jinaeseyo?) ',
        sound: 'sounds/greetings/howareyou.mp3'),
    TermModel(
        engWord: 'Thank you',
        krWord: '감사합니다 (Gamsahamnida) ',
        sound: 'sounds/greetings/thankyou.mp3'),
    TermModel(
        engWord: 'Good morning',
        krWord: '안녕하세요 (Annyeong haseyo)  ',
        sound: 'sounds/greetings/morning.mp3'),
    TermModel(
        engWord: 'Good afternoon',
        krWord: '안녕하세요 (Annyeong haseyo) ',
        sound: 'sounds/greetings/afternoon.mp3'),
    TermModel(
        engWord: 'Good evening',
        krWord: '안녕하세요 (Annyeong haseyo) ',
        sound: 'sounds/greetings/evening.mp3'),
    TermModel(
        engWord: 'Good night',
        krWord: '안녕히 주무세요 (Annyeonghee jumuseyo) ',
        sound: 'sounds/greetings/night.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barColor,
        title: Text('Greetings'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: greetings.length,
          itemBuilder: (BuildContext context, int index) {
            return TermInfo(term: greetings[index]);
          }),
    );
  }
}
