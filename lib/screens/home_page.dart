import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../components/category.dart';
import 'family_page.dart';
import 'numers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barColor,
        title: const Text('Kimbap'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (cotext) {
                return const NumersPage();
              }));
            },
          ),
          const Divider(
            thickness: .5,
            height: .5,
          ),
          Category(
            text: 'Family',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (cotext) {
                return const FamilyPage();
              }));
            },
          ),
          const Divider(
            thickness: .5,
            height: .5,
          ),
          Category(
            text: 'Food',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (cotext) {
                return const NumersPage();
              }));
            },
          ),
          const Divider(
            thickness: .5,
            height: .5,
          ),
          Category(
            text: 'Greetings',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (cotext) {
                return const NumersPage();
              }));
            },
          ),
          const Divider(
            thickness: .5,
            height: .5,
          ),
          Category(
            text: 'Colors',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (cotext) {
                return const NumersPage();
              }));
            },
          ),
          const Divider(
            thickness: .5,
            height: .5,
          ),
        ],
      ),
    );
  }
}
