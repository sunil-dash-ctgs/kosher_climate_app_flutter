import 'package:flutter/material.dart';
import 'package:kosher_climate_app_flutter/resources/Resources.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveSizer(
        builder: (p0, p1, p2) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    child: Center(
                      child: Image.asset(
                        "assets/kosher.png",height: 120,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(top: 5.h, left: 13.w, right: 13.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "/homepage");
                              },
                              child: Container(
                                height:9.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      begin:
                                      Alignment(6.123234262925839e-17, 1),
                                      end: Alignment(-1, 6.123234262925839e-17),
                                      colors: [
                                        Color(0xFFA6D1E6),
                                        Color(0xFFA6D1E6)
                                      ]),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(StringResources.english1,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.all(1.w),
                                    ),
                                    Expanded(
                                      child: Text(StringResources.english,
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height:9.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      begin:
                                      Alignment(6.123234262925839e-17, 1),
                                      end: Alignment(-1, 6.123234262925839e-17),
                                      colors: [
                                        Color(0xFF5FD068),
                                        Color(0xFF5FD068)
                                      ]),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(StringResources.telugu1,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.all(1.w),
                                    ),
                                    Expanded(
                                      child: Text(StringResources.telugu,
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){},
                              child:  Container(
                                height:9.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      begin:
                                      Alignment(6.123234262925839e-17, 1),
                                      end: Alignment(-1, 6.123234262925839e-17),
                                      colors: [
                                        Color(0xFFF9D923),
                                        Color(0xFFF9D923)
                                      ]),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(StringResources.hindi1,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.all(1.w),
                                    ),
                                    Expanded(
                                      child: Text(StringResources.hindi,
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height:9.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      begin:
                                      Alignment(6.123234262925839e-17, 1),
                                      end: Alignment(-1, 6.123234262925839e-17),
                                      colors: [
                                        Color(0xFFEB5353),
                                        Color(0xFFEB5353)
                                      ]),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(StringResources.marathi1,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.all(1.w),
                                    ),
                                    Expanded(
                                      child: Text(StringResources.marathi,
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){},
                              child:  Container(
                                height:9.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      begin:
                                      Alignment(6.123234262925839e-17, 1),
                                      end: Alignment(-1, 6.123234262925839e-17),
                                      colors: [
                                        Color(0xFFA760FF),
                                        Color(0xFFA760FF)
                                      ]),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(StringResources.gujarat1,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.all(1.w),
                                    ),
                                    Expanded(
                                      child: Text(StringResources.gujarat,
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child:  Container(
                                height:9.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      begin:
                                      Alignment(6.123234262925839e-17, 1),
                                      end: Alignment(-1, 6.123234262925839e-17),
                                      colors: [
                                        Color(0xFF37E2D5),
                                        Color(0xFF37E2D5)
                                      ]),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(StringResources.odia1,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.all(1.w),
                                    ),
                                    Expanded(
                                      child: Text(StringResources.odia,
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height:9.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      begin:
                                      Alignment(6.123234262925839e-17, 1),
                                      end: Alignment(-1, 6.123234262925839e-17),
                                      colors: [
                                        Color(0xFF1B39D2),
                                        Color(0xFF1B39D2)
                                      ]),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(StringResources.assam1,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.all(1.w),
                                    ),
                                    Expanded(
                                      child: Text(StringResources.assam,
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height:9.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      begin:
                                      Alignment(6.123234262925839e-17, 1),
                                      end: Alignment(-1, 6.123234262925839e-17),
                                      colors: [
                                        Color(0xFF078AB3),
                                        Color(0xFF078AB3)
                                      ]),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(StringResources.bengali1,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      margin: EdgeInsets.all(1.w),
                                    ),
                                    Expanded(
                                      child: Text(StringResources.bengali,
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(top: 15.h, left: 5.w, right: 5.w),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            Text(StringResources.versionname,
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                            Text(StringResources.developby,
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ],
                        )
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
