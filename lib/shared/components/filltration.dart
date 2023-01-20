import 'package:afedni_application/shared/components/dorop_down.dart';
import 'package:flutter/material.dart';
import '../style/constance.dart';

class FiltrationCollections extends StatefulWidget {
  const FiltrationCollections({Key? key}) : super(key: key);

  @override
  State<FiltrationCollections> createState() => _FiltrationState();
}

class _FiltrationState extends State<FiltrationCollections> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: deftDropDown(
                          lable: 'المرحلة التعليمية',

                          items: [
                            'رياض الأطفال ',
                            'التعليم الأساسي (1)',
                            'التعليم الأساسي (2)',
                            'التعليم مابعد الأساسي',
                          ],
                          onChange: (value) {}),
                    ),
                  ),
                  defPadding,
                  Expanded(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: deftDropDown(
                          lable: 'الصف الدراسي',
                          items: [
                            'الاول',
                            'الثاني',
                          ],
                          onChange: (value) {}),
                    ),
                  ),
                  defPadding,
                  Expanded(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: deftDropDown(
                          lable: 'الفصول الدراسية',
                          items: [
                            'الاول',
                            'الثاني',
                          ],
                          onChange: (value) {}),
                    ),
                  ),
                  defPadding,
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: deftDropDown(
                        lable: 'المادة',
                        items: [
                          'عربي',
                          'انجليزي',
                          'رياضيات',
                          'فرنساوي',
                        ],
                        onChange: (value) {}),
                  ),
                  defPadding,
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: deftDropDown(
                        lable: 'نوع المحتوي',
                        items: [
                          'رياض الأطفال ',
                          'التعليم الأساسي (1)',
                          'التعليم الأساسي (2)',
                          'التعليم مابعد الأساسي',
                        ],
                        onChange: (value) {}),
                  ),
                ],
              ),

            ],
          ),
        )
      ),
    );
  }
}
