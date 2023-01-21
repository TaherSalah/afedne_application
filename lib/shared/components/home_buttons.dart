import 'package:flutter/material.dart';

import '../style/constance.dart';

class DefButtons extends StatefulWidget {
  const DefButtons({Key? key}) : super(key: key);

  @override
  State<DefButtons> createState() => _DefButtonsState();
}

class _DefButtonsState extends State<DefButtons> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed:(){},child: Text('بحث'),color: Colors.orange,shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(13.5))),
            defPadding,
            MaterialButton(onPressed:(){},child: Text('اعادة تعيين'),shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(13.5),side: BorderSide(color: Colors.black)),),

          ],
        ),
      ),
    );
  }
}
