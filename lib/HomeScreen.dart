import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:kosher_climate_app_flutter/resources/Resources.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SafeArea(
          top: true,
          minimum: const EdgeInsets.all(5),
          bottom: true,
          child: Scaffold(body: ResponsiveSizer(
            builder: (p0, p1, p2) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 25.h,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/dashboard_bg.png"),
                              fit: BoxFit.cover,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.person),
                                ),
                              ),
                              margin: EdgeInsets.all(3.w),
                            ),
                            Expanded(
                                child: Center(
                                  child: Image.asset(
                                    "assets/kosher_climate.png",
                                    height: 65.h,
                                    width: 65.w,
                                  ),
                                )),
                            SizedBox(
                              height: 8.h,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            StringResources.module_select,
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 5.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      color: Colors.white,
                                      child: Card(
                                        elevation: 5,
                                        shadowColor: Colors.grey,
                                        color: Colors.white,
                                        //margin: EdgeInsets.all(8),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Container(
                                          height: 16.h,
                                          width: 40.w,
                                          //color: Colors.white,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffffffff),
                                                  Color(0xffffffff),
                                                ]),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1, top: 1, bottom: 1),
                                                  child: Center(
                                                    child: Text(
                                                      StringResources.farmer_onboarding,
                                                      style: TextStyle(
                                                        fontSize: 14.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                margin:
                                                EdgeInsets.symmetric(horizontal: 5.w),
                                                padding: EdgeInsets.all(5),
                                                child: Image.asset(
                                                  "assets/farmer_survey.png",
                                                  width: 20.w,
                                                  height: 10.h,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                  Container(
                                      color: Colors.white,
                                      child: Card(
                                        elevation: 5,
                                        shadowColor: Colors.grey,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Container(
                                          height: 16.h,
                                          width: 40.w,
                                          //color: Colors.white,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffffffff),
                                                  Color(0xffffffff),
                                                ]),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1, top: 1, bottom: 1),
                                                  child: Center(
                                                    child: Text(
                                                      StringResources.crop_data,
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 5.w),
                                                  child: Center(
                                                    child: Image.asset(
                                                      "assets/crop_survey.png",
                                                      width: 20.w,
                                                      height: 10.h,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      color: Colors.white,
                                      child: Card(
                                        elevation: 5,
                                        shadowColor: Colors.grey,
                                        color: Colors.white,
                                        //margin: EdgeInsets.all(8),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Container(
                                          height: 16.h,
                                          width: 40.w,
                                          //color: Colors.white,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffffffff),
                                                  Color(0xffffffff),
                                                ]),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1, top: 1, bottom: 1),
                                                  child: Center(
                                                    child: Text(
                                                      StringResources.pipe_installation,
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 5.w),
                                                  padding: EdgeInsets.all(5),
                                                  child: Center(
                                                    child: Image.asset(
                                                      "assets/seed_survey.png",
                                                      width: 20.w,
                                                      height: 10.h,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      )),
                                  Container(
                                      color: Colors.white,
                                      child: Card(
                                        elevation: 5,
                                        shadowColor: Colors.grey,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Container(
                                          height: 16.h,
                                          width: 40.w,
                                          //color: Colors.white,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffffffff),
                                                  Color(0xffffffff),
                                                ]),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1, top: 1, bottom: 1),
                                                  child: Center(
                                                    child: Text(
                                                      StringResources.polygon,
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                margin:
                                                EdgeInsets.symmetric(horizontal: 5.w),
                                                padding: EdgeInsets.all(5),
                                                child: Center(child: Image.asset(
                                                  "assets/polygon.png",
                                                  width: 20.w,
                                                  height: 10.h,
                                                ),),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      color: Colors.white,
                                      child: Card(
                                        elevation: 5,
                                        shadowColor: Colors.grey,
                                        color: Colors.white,
                                        //margin: EdgeInsets.all(8),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Container(
                                          height: 18.h,
                                          width: 40.w,
                                          //color: Colors.white,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffffffff),
                                                  Color(0xffffffff),
                                                ]),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1, top: 1, bottom: 1),
                                                  child: Center(
                                                    child: Text(
                                                      StringResources.capture_aeration_event,
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                margin:
                                                EdgeInsets.symmetric(horizontal: 5.w),
                                                padding: EdgeInsets.all(5),
                                                child: Center(
                                                  child: Image.asset(
                                                    "assets/trader_survey.png",
                                                    width: 20.w,
                                                    height: 10.h,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                  Container(
                                      color: Colors.white,
                                      child: Card(
                                        elevation: 5,
                                        shadowColor: Colors.grey,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Container(
                                          height: 18.h,
                                          width: 40.w,
                                          //color: Colors.white,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffffffff),
                                                  Color(0xffffffff),
                                                ]),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1, top: 1, bottom: 1),
                                                  child: Center(
                                                    child: Text(
                                                      StringResources.farmer_benefits_dashboard,
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                  margin:
                                                  EdgeInsets.symmetric(horizontal: 5.w),
                                                  padding: EdgeInsets.all(5),
                                                  child: Center(
                                                    child: Image.asset(
                                                      "assets/input_survey.png",
                                                      width: 20.w,
                                                      height: 10.h,
                                                    ),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      color: Colors.white,
                                      child: Card(
                                        elevation: 5,
                                        shadowColor: Colors.grey,
                                        color: Colors.white,
                                        //margin: EdgeInsets.all(8),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Container(
                                          height: 16.h,
                                          width: 40.w,
                                          //color: Colors.white,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffffffff),
                                                  Color(0xffffffff),
                                                ]),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 1.h,),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1, top: 1, bottom: 1),
                                                  child: Center(
                                                    child: Text(
                                                      StringResources.reports,
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black,),
                                                    ),
                                                  )
                                              ),
                                              SizedBox(height: 1.h,),
                                              Container(
                                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                                  padding: EdgeInsets.all(5),
                                                  child:  Center(
                                                    child: Image.asset("assets/reports.png",
                                                      width: 20.w,
                                                      height: 10.h,
                                                    ),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                  ),
                                  Container(
                                      color: Colors.white,
                                      child: Card(
                                        elevation: 5,
                                        shadowColor: Colors.grey,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Container(
                                          height: 16.h,
                                          width: 40.w,
                                          //color: Colors.white,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffffffff),
                                                  Color(0xffffffff),
                                                ]),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 1.h,),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1, top: 1, bottom: 1),
                                                  child: Center(
                                                    child: Text(
                                                      StringResources.Weather,
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black,),
                                                    ),
                                                  )
                                              ),
                                              SizedBox(height: 1.h,),
                                              Container(
                                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                                  padding: EdgeInsets.all(5),
                                                  child:  Center(
                                                    child: Image.asset("assets/farmer_survey.png",
                                                      width: 20.w,
                                                      height: 10.h,
                                                    ),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        color: Colors.white,
                                        child: Card(
                                          elevation: 5,
                                          shadowColor: Colors.grey,
                                          color: Colors.white,
                                          //margin: EdgeInsets.all(8),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(7)),
                                          child: Container(
                                            height: 16.h,
                                            width: 40.w,
                                            //color: Colors.white,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topRight,
                                                  end: Alignment.bottomLeft,
                                                  colors: [
                                                    Color(0xffffffff),
                                                    Color(0xffffffff),
                                                  ]),
                                              borderRadius: BorderRadius.circular(7),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 1.h,),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1, top: 1, bottom: 1),
                                                    child: Center(
                                                      child: Text(
                                                        "Update farmer",
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                          fontWeight: FontWeight.w400,
                                                          color: Colors.black,),
                                                      ),
                                                    )
                                                ),
                                                SizedBox(height: 1.h,),
                                                Container(
                                                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                                                    padding: EdgeInsets.all(5),
                                                    child:  Center(
                                                      child: Image.asset("assets/update_icon.png",
                                                        width: 20.w,
                                                        height: 10.h,
                                                      ),
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              );
            },
          ))),
    );
  }
}
