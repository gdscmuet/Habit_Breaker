
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class or_line_widget extends StatelessWidget {
  const or_line_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
      child: Container(
              margin: const EdgeInsets.only(left: 1.0, right: 5.0),
              child: const Divider(
                color: Color(0xffC0BEBE),
                thickness: 1,

              )),
        ),
        const Text("OR",style: TextStyle(
            color: Color(0xffC0BEBE), fontFamily: "Sansita", fontSize:10),),
        Expanded(
          child:  Container(
              margin: const EdgeInsets.only(left: 5.0, right: 1.0),
              child: const Divider(
                color: Color(0xffC0BEBE),
                thickness: 1,
              )),
        ),
      ],
    );
  }
}
