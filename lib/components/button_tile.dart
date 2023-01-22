import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class button_tile extends StatelessWidget {
  button_tile(
      {required this.image, required this.text, required this.ontap, Key? key})
      : super(key: key);

  String? image;
  String? text;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.only(left: 51),
        height: 54.h,
        width: double.infinity,
        child: Row(
          children: [
            Image.asset(
              image!,
              height: 25,
              width: 25,
            ),
            SizedBox(
              width: 36.w,
            ),
            Text(
              text!,
              style: TextStyle(fontSize: 16.sp),
            )
          ],
        ),
      ),
    );
  }
}
