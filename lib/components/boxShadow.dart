import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class boxShadow extends StatelessWidget {
  const boxShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // autogroup2hmzThM (9Ntsuo7w7TixZPdxHf2hMz)
      width: 351,
      height: 50,
      decoration: BoxDecoration (
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO( 152, 144, 144,0.5),
              offset: Offset(-2, -5),
              spreadRadius: -2,
              blurRadius: 4,
              inset: true
          ),BoxShadow(
              color: Color.fromRGBO( 152, 144, 144,0.25),
              offset: Offset(-4, 1),
              spreadRadius: 2,
              blurRadius: 1,
              inset: true
          ),
          // BoxShadow(
          //     color: Color.fromRGBO(152, 144, 144,0.25),
          //     offset: Offset(1*fem, 2*fem),
          //     spreadRadius: 0.1*fem,
          //     blurRadius: 0.2*fem,
          //     inset: true
          // ),
        ],
      ),
      child:const TextField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
            EdgeInsets.only(left: 15, bottom: 8, top: 9, right: 15),
            hintText: "Hint here",
          hintStyle: TextStyle (
          fontFamily:  'Sansita',
            fontSize:  12,
            fontWeight:  FontWeight.w400,
            height:  1.2,
            color:  Color(0x7f6d6b6b),
          ),
        ),
      ),
    );
  }
}
