import 'package:flutter/material.dart';

class CurriculaSection extends StatelessWidget {
  const CurriculaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Image.asset(
                    'assets/images/image1.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                height: 30,
                width: 100,
                decoration: BoxDecoration(color: Colors.cyan),
                child: Text(
                  'رياض الأطفال',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.5,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SizedBox(
                width: 2.5,
              ),

              Expanded(
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Image.asset(
                    'assets/images/image2.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                height: 30,
                width: 100,
                decoration: BoxDecoration(color: Colors.cyan),
                child: Text(
                  'التعليم الاساسي (1)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.5,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Image.asset(
                    'assets/images/image3.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                height: 30,
                width: 100,
                decoration: BoxDecoration(color: Colors.cyan),
                child: Text(
                  'التعليم الاساسي (2)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
                ),
              )
            ],
          ),

          SizedBox(
            width: 2.5,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Image.asset(
                    'assets/images/image4.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                height: 30,
                width: 100,
                decoration: BoxDecoration(color: Colors.cyan),
                child: Text(
                  'التعليم مابعد الاساسي ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
