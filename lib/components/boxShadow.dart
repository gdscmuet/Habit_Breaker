import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';


class boxShadow extends StatelessWidget {
  const boxShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // autogroup2hmzThM (9Ntsuo7w7TixZPdxHf2hMz)
      margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 9*fem, 32*fem),
      padding: EdgeInsets.fromLTRB(25*fem, 17*fem, 31*fem, 17*fem),
      width: 351,
      height: 50,
      decoration: BoxDecoration (
        color: Colors.white,
        borderRadius: BorderRadius.circular(30*fem),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO( 152, 144, 144,0.5),
              offset: Offset(-2*fem, -5*fem),
              spreadRadius: -2*fem,
              blurRadius: 4*fem,
              inset: true
          ),BoxShadow(
              color: Color.fromRGBO( 152, 144, 144,0.25),
              offset: Offset(-4*fem, 1*fem),
              spreadRadius: 2*fem,
              blurRadius: 1*fem,
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
