import 'package:flutter/material.dart';
import '../../shared/components/bottomNavBar.dart';
import '../../shared/components/curricula_section.dart';
import '../../shared/components/filltration.dart';
import '../../shared/components/home_buttons.dart';
import '../../shared/components/slide_show.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Afedne'),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Image.asset('assets/images/logo.png'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.dark_mode_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            const SliderShow(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'مرحبا بك في مناهج التعليم في سلطنة عمان',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
              child: Expanded(
                child: Column(
                  children: const [
                    FiltrationCollections(),
                    DefButtons(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const CurriculaSection()
          ],
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: defualtBottomNavigationBar(tabs: [
          const GButton(
            icon: Icons.home,
            text: 'الرئيسية',
          ),
          const GButton(
            icon: Icons.question_answer_outlined,
            text: 'الاختبارات',
          ),
          const GButton(
            icon: Icons.book_sharp,
            text: 'المقررات',
          ),
          const GButton(
            icon: Icons.settings,
            text: 'الاعدادات',
          ),
        ], onTabChange: (value) {}, currentIndex: 0, context: context),
      ),
    );
  }
}
