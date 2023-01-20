import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

// List<String> items1 = [];
//
// class DropDown extends StatefulWidget {
//   const DropDown({Key? key}) : super(key: key);
//
//   @override
//   State<DropDown> createState() => _DropDownState();
// }
//
// class _DropDownState extends State<DropDown> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             isExpanded: true,
//             // dropdownDirection: DropdownDirection.right,
//             hint: Row(
//               children: const [
//                 // Icon(
//                 //   Icons.list,
//                 //   size: 16,
//                 //   color: Colors.white,
//                 // ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 Expanded(
//                   child: Text(
//                     'المرحلة التعليمية',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.yellow,
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               ],
//             ),
//             items: items1
//                 .map((item) => DropdownMenuItem<String>(
//                       value: item,
//                       child: Text(
//                         item,
//                         style: const TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ))
//                 .toList(),
//             value: selectedValue,
//             onChanged: (value) {
//               setState(() {
//                 selectedValue = value as String;
//                 // ignore: avoid_print
//                 print(selectedValue);
//               });
//             },
//             // icon: const Icon(
//             //   Icons.arrow_forward_ios_outlined,
//             // ),
//             iconSize: 14,
//             iconEnabledColor: Colors.white,
//             iconDisabledColor: Colors.grey,
//             buttonHeight: 50,
//             buttonWidth: 160,
//             buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//             buttonDecoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               border: Border.all(
//                 color: Colors.black26,
//               ),
//               color: Colors.black,
//             ),
//             buttonElevation: 2,
//             itemHeight: 40,
//             itemPadding: const EdgeInsets.only(left: 14, right: 14),
//             dropdownMaxHeight: 200,
//             dropdownWidth: 200,
//             dropdownPadding: null,
//             dropdownDecoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               color: Colors.blueGrey,
//             ),
//             dropdownElevation: 8,
//             scrollbarRadius: const Radius.circular(40),
//             scrollbarThickness: 6,
//             scrollbarAlwaysShow: true,
//             offset: const Offset(-20, 0),
//           ),
//         ),
//       ],
//     );
//   }
// }


Widget deftDropDown({
  required String lable,
  List<String>? items,
  ValueChanged? onChange,
  String? selectedValue,

}) {
  return DropdownButtonHideUnderline(

    child: DropdownButton2(
      dropdownDirection:DropdownDirection.right,
      isExpanded: true,
      // dropdownDirection: DropdownDirection.right,
      hint: Row(
        children: [
          // Icon(
          //   Icons.list,
          //   size: 16,
          //   color: Colors.white,
          // ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              lable,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
      items: items!
          .map((item) => DropdownMenuItem<String>(
                value: item,

                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 12,
                    decorationColor: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ))
          .toList(),
      value: selectedValue,
      onChanged: onChange,
      // (value) {
      // setState(() {
      //   selectedValue = value as String;
      //   // ignore: avoid_print
      //   // print(selectedValue);
      // });
      // },
      // icon: const Icon(
      //   Icons.arrow_forward_ios_outlined,
      // ),
      iconSize: 14,
      iconEnabledColor: Colors.white,
      iconDisabledColor: Colors.grey,
      buttonHeight: 50,
      buttonWidth: 160,
      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
      buttonDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Colors.black26,
        ),
        color: Colors.black,
      ),
      buttonElevation: 2,
      itemHeight: 40,
      itemPadding: const EdgeInsets.only(left: 14, right: 14),
      dropdownMaxHeight: 200,
      dropdownWidth: 200,
      dropdownPadding: null,
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.blueGrey,
      ),
      dropdownElevation: 8,
      scrollbarRadius: const Radius.circular(40),
      scrollbarThickness: 6,
      scrollbarAlwaysShow: true,
      offset: const Offset(-20, 0),
    ),
  );
}
