import 'package:flutter/material.dart';
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
       const    SliderShow(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('مرحبا بك في مناهج التعليم في سلطنة عمان',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Container(
             decoration: BoxDecoration(
               color: Colors.grey.withOpacity(0.5)
             ),
             child: Expanded(
               child: Column(
                 children: [
                   const  FiltrationCollections(),
                   DefButtons(),
                  
                 ],
               ),
             ),
           )



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

///////////  Start BottomNAvBar GNav  Widget      //////////////

Widget defualtBottomNavigationBar({
  required List<GButton> tabs,
  required ValueChanged<int> onTabChange,
  required int currentIndex,
  required BuildContext context,
}) =>
    Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
          child: GNav(
            gap: 7,
            onTabChange: onTabChange,
            selectedIndex: 0,
            backgroundColor: Colors.black,
            curve: Curves.linear,
            activeColor: Colors.cyan,
            color: Colors.grey,
            textStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 16.0, color: Colors.amber, fontWeight: FontWeight.bold),
            padding: const EdgeInsets.all(16),
            tabs: tabs,
          ),
        ));
