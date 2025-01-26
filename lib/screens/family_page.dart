import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../components/item_info.dart';
import '../models/item.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Item> family = const [
    Item(
        engWord: 'Family',
        krWord: '가족 (gajok)',
        sound: 'sounds/family/family.mp3'),
    Item(
        engWord: 'Father',
        krWord: '아버지 (abeoji)',
        sound: 'sounds/family/father.mp3'),
    Item(engWord: 'Dad', krWord: '아빠 (appa)', sound: 'sounds/family/dad.mp3'),
    Item(
        engWord: 'Mother',
        krWord: '어머니 (eomeoni)',
        sound: 'sounds/family/mother.mp3'),
    Item(engWord: 'Mom', krWord: '엄마 (eomma)', sound: 'sounds/family/mom.mp3'),
    Item(
        engWord: 'Parents',
        krWord: ' 부모님 (bumonim)',
        sound: 'sounds/family/parents.mp3'),
    Item(
        engWord: 'Grandparents',
        krWord: '조부모님 (jobumonim)',
        sound: 'sounds/family/grandparents.mp3'),
    Item(
        engWord: 'Grandfather',
        krWord: '할아버지 (harabeoji)',
        sound: 'sounds/family/grandfather.mp3'),
    Item(
        engWord: 'Grandmother',
        krWord: ' 할머니 (halmeoni)',
        sound: 'sounds/family/grandmother.mp3'),
    Item(
        engWord: 'Big brother (if you are a boy)',
        krWord: '형 (hyeong)',
        sound: 'sounds/family/hyung.mp3'),
    Item(
        engWord: 'Big brother (if you are a girl)',
        krWord: ' 오빠 (oppa)',
        sound: 'sounds/family/oppa.mp3'),
    Item(
        engWord: 'Big sister (if you are a boy)',
        krWord: '누나 (nuna)',
        sound: 'sounds/family/nuna.mp3'),
    Item(
        engWord: 'Big sister (if you are a girl)',
        krWord: '언니 (eonni)',
        sound: 'sounds/family/unni.mp3'),
    Item(
        engWord: 'Younger sibling',
        krWord: '동생 (dongsaeng)',
        sound: 'sounds/family/younger_sib.mp3'),
    Item(
        engWord: 'Younger brother',
        krWord: '남동생 (namdongsaeng)',
        sound: 'sounds/family/youngerbro.mp3'),
    Item(
        engWord: 'Younger sister',
        krWord: '여동생 (yeodongsaeng)',
        sound: 'sounds/family/youngsis.mp3'),
    Item(
        engWord: 'Brothers',
        krWord: '형제 (hyeongje)',
        sound: 'sounds/family/brothers.mp3'),
    Item(
        engWord: 'Sisters',
        krWord: '자매 (jamae)',
        sound: 'sounds/family/sisters.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barColor,
        title: Text('Family'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: family.length,
          itemBuilder: (BuildContext context, int index) {
            return Info(number: family[index]);
          }),
    );
  }
}
