import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class inputfields extends StatelessWidget {
  String? hint_text;
  FocusNode? currentNode;
  FocusNode? nextNode;
  bool? obsecureText;
  FocusNode? focusNode;
  IconData? icon;
  Widget? preicon;
  dynamic validator;
  TextInputType? keyboardType;
  // bool? visiblity;
  Function()? onIconPress;
  TextEditingController? controller;
  inputfields({
    required this.hint_text,
    required this.currentNode,
    required this.focusNode,
    required this.nextNode,
    required this.controller,
    this.validator,
    this.icon,
    this.preicon,
    this.onIconPress,
    this.obsecureText,
    this.keyboardType,
    // this.visiblity,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 60,
      width: 371,
      //  color: Colors.white,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
      // ignore: prefer_const_constructors
      child: 
      TextFormField(
        style:
        TextStyle(color: Color(0xff7FCFCF), fontFamily: "Sansita", fontSize: 12),
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: obsecureText ?? false,
        controller: controller,
        cursorColor: Colors.black,
        focusNode: focusNode,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 1, top: 27),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffC0BEBE),
            ),
          ),
          focusedBorder:  UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff7FCFCF),
            ),
          ),
          border: InputBorder.none,
          hintText: hint_text,
          hintStyle: TextStyle(
            color: Color(0xffC0BEBE),
            fontSize: 10.sp,
          ),
          prefixIcon: preicon,
          suffixIcon: Icon(
            icon,
            size: 15.sp,
            color: Color.fromARGB(255, 65, 61, 61),
          ),
        ),
        validator:validator,
      ),
    );
  }
}
