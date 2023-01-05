import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../components/boxShadow.dart';
import '../utils/utils.dart';
class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: Scaffold(
        body: Container(
          // homescreencFV (1:2)
          padding: EdgeInsets.fromLTRB(17 * fem, 41 * fem, 7 * fem, 68 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(30 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // autogroup8tiy2yR (9NtseJZkL7HzCbpGaT8TiY)
                margin: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 9 * fem, 42 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // hellofarheenYB5 (5:2)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 182 * fem, 0 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 90 * fem,
                      ),
                      child: Text(
                        'Hello Farheen!',
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2 * ffem / fem,
                          color: Color(0x7f000000),
                        ),
                      ),
                    ),
                    Container(
                      // ellipse6z35 (43:2)
                      margin:
                          EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 3 * fem),
                      width: 60 * fem,
                      height: 60 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 * fem),
                        border: Border.all(color: Color(0xffffffff)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/page-1/images/ellipse-6-bg-wUP.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              boxShadow(),
              Container(
                // autogroupzydwi11 (9Ntt9xP1MUK1RaLRE9zYdW)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 25 * fem),
                padding:
                    EdgeInsets.fromLTRB(30 * fem, 26 * fem, 5.23 * fem, 23 * fem),
                width: double.infinity,
                height: 226 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(40 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupv5g4mzs (9NttbXUjUMBaaKY5eCV5G4)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 19 * fem, 26 * fem, 29 * fem),
                      width: 155 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup6fsytZh (9NtvZPNgPeBkegjad16fSY)
                            padding: EdgeInsets.fromLTRB(
                                3 * fem, 0 * fem, 3 * fem, 25 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogrouphgwk4sV (9Nttubnx3vgiKufNyGhgWk)
                                  margin: EdgeInsets.fromLTRB(
                                      2 * fem, 0 * fem, 0 * fem, 16 * fem),
                                  width: 73 * fem,
                                  height: 26 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xa5e1c3e7),
                                    borderRadius: BorderRadius.circular(10 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Workout',
                                      style: SafeGoogleFont(
                                        'Sansita',
                                        fontSize: 6 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        color: Color(0xff9830aa),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroup3dwgv91 (9Ntu1mHM3tDEETcXHY3DWg)
                                  width: 143 * fem,
                                  height: 37 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // welcomeback3UX (11:16)
                                        left: 2 * fem,
                                        top: 0 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 86 * fem,
                                            height: 17 * fem,
                                            child: Text(
                                              'Welcome Back!',
                                              style: SafeGoogleFont(
                                                'Sansita',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2 * ffem / fem,
                                                color: Color(0x7f000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // todayschallengeWd1 (13:18)
                                        left: 0 * fem,
                                        top: 13 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 143 * fem,
                                            height: 24 * fem,
                                            child: Text(
                                              'Today’s Challenge',
                                              style: SafeGoogleFont(
                                                'Sansita',
                                                fontSize: 20 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2 * ffem / fem,
                                                color: Color(0xad000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup1vfzb8f (9NtuAG3Bzgxrka2oT31vfz)
                            width: double.infinity,
                            height: 25 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroup9cx2KaT (9Ntugzeyi1ykguqh6p9CX2)
                                  width: 25 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7fcfcf),
                                    borderRadius: BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: SafeGoogleFont(
                                        'Sansita',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        color: Color(0xfffefefe),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1 * fem,
                                ),
                                Container(
                                  // autogroupjvt2nU3 (9NtupEwuPwW9Jq5aR9jvT2)
                                  width: 25 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7fcfcf),
                                    borderRadius: BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      style: SafeGoogleFont(
                                        'Sansita',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        color: Color(0xfffefefe),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1 * fem,
                                ),
                                Container(
                                  // autogroupk43sGPD (9Ntuvjm5XjVPb2p2RbK43S)
                                  width: 25 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7fcfcf),
                                    borderRadius: BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: SafeGoogleFont(
                                        'Sansita',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        color: Color(0xfffefefe),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1 * fem,
                                ),
                                Container(
                                  // autogroup4acgKsH (9Ntv4uC9LhnHjVSztv4AcG)
                                  width: 25 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7fcfcf),
                                    borderRadius: BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '4',
                                      style: SafeGoogleFont(
                                        'Sansita',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        color: Color(0xfffefefe),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1 * fem,
                                ),
                                Container(
                                  // autogroup4u44bZu (9NtvBKB8C39rRHEcyp4u44)
                                  width: 25 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff7fcfcf)),
                                    borderRadius: BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '5',
                                      style: SafeGoogleFont(
                                        'Sansita',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        color: Color(0xff7fcfcf),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1 * fem,
                                ),
                                Container(
                                  // autogrouptcjasGX (9NtvJyd2JFkf1GCdusTcjA)
                                  width: 25 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff7fcfcf)),
                                    borderRadius: BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '6',
                                      style: SafeGoogleFont(
                                        'Sansita',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        color: Color(0xff7fcfcf),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupuzdeAFd (9Ntvzhypf9DH2C6mGQuzdE)
                      width: 140.77 * fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle95Voh (11:12)
                            left: 0 * fem,
                            top: 31 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 137.75 * fem,
                                height: 119.55 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40 * fem),
                                    color: Color(0xffcfc47f),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle104oJb (13:44)
                            left: 44.7670898438 * fem,
                            top: 83.0000038147 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 92.45 * fem,
                                height: 78 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40 * fem),
                                    color: Color(0xffc1947f),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // casualfemalewelcomingoutpose48 (11:13)
                            left: 4.7670898438 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 136 * fem,
                                height: 177 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/casual-female-welcoming-out-pose-4851367-4046990-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupe7lumud (9NtwTSiGkShQUiXzc5E7LU)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 20 * fem),
                padding:
                    EdgeInsets.fromLTRB(115 * fem, 23 * fem, 119 * fem, 22 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff7fcfcf),
                  borderRadius: BorderRadius.circular(30 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // addanewgoalrgB (13:41)
                      margin:
                          EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 0 * fem),
                      child: Text(
                        'Add A New Goal',
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // pluscirclefill1BCf (13:42)
                      margin:
                          EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                      width: 16 * fem,
                      height: 16 * fem,
                      child: Image.asset(
                        'assets/page-1/images/plus-circle-fill-1.png',
                        width: 16 * fem,
                        height: 16 * fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // discoversbH (5:6)
                margin: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 6 * fem),
                child: Text(
                  'Discover',
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2 * ffem / fem,
                    color: Color(0x7f000000),
                  ),
                ),
              ),
              Container(
                // autogroupnoyzBby (9Ntwcmn4XqbrvxQY11noyz)
                width: double.infinity,
                height: 107 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupshegXfq (9NtwpMH6yd7kQLoPKeSHeG)
                      width: 118 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffe1c3e6),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // dumbbellspreviewremovebgprevie (5:19)
                            left: 12 * fem,
                            top: 2 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 94 * fem,
                                height: 77 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/dumbbellspreview-removebg-preview-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // workoutATu (13:34)
                            left: 32 * fem,
                            top: 76 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 38 * fem,
                                height: 12 * fem,
                                child: Text(
                                  'Workout',
                                  style: SafeGoogleFont(
                                    'Sansita',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2 * ffem / fem,
                                    color: Color(0xff9830aa),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6 * fem,
                    ),
                    Container(
                      // autogroupbqfn3Go (9Ntwtr9cJQLcSdr1B2bqfn)
                      width: 118 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffc37f),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // educationZF9 (5:15)
                            left: 40 * fem,
                            top: 76 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 43 * fem,
                                height: 12 * fem,
                                child: Text(
                                  'Education',
                                  style: SafeGoogleFont(
                                    'Sansita',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2 * ffem / fem,
                                    color: Color(0xffb17809),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // investforeducation576876948335 (5:20)
                            left: 22 * fem,
                            top: 5 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 76 * fem,
                                height: 74 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/invest-for-education-5768769-4833566-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6 * fem,
                    ),
                    Container(
                      // autogroupnz2tj39 (9Ntwz6VsBK6cpeQ4LJnz2t)
                      width: 118 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfff3adad),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // goodhealthfBh (5:16)
                            left: 28 * fem,
                            top: 76 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 53 * fem,
                                height: 12 * fem,
                                child: Text(
                                  'Good Health',
                                  style: SafeGoogleFont(
                                    'Sansita',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2 * ffem / fem,
                                    color: Color(0xffb81616),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // healthcare6869166562850319cf (5:22)
                            left: 19 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 88 * fem,
                                height: 79 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/health-care-6869166-5628503-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
