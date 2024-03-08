
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kosher_climate_app_flutter/resources/Resources.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DataYear extends StatefulWidget {
  const DataYear({super.key});

  @override
  State<DataYear> createState() => _DataYearState();
}

class _DataYearState extends State<DataYear> {

  String? dropdownYear, dropdownSeason;
  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (p0, p1, p2) {
          return Scaffold(
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 2.h,),
                      Align(
                        alignment: Alignment.topRight,
                        child:  Container(
                          height: 4.h,
                          width: 23.w,
                          margin: EdgeInsets.only(right: 5.w),
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(7))),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF06c238),
                                Color(0xFF06c238)],
                            ),
                          ),
                          child:  TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              //padding: const EdgeInsets.all(16.0),
                              textStyle: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            child: const Text('showtimer'),
                          ),
                          /* child: Align(
                        alignment: Alignment.topRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF06c238),
                                        Color(0xFF06c238),
                                        Color(0xFF06c238),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  //padding: const EdgeInsets.all(16.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {},
                                child: const Text(''),
                              ),
                            ],
                          ),
                        ),
                      ),*/
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        width: 70.w,
                        height: 4.7.h,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(7))),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF06c238),
                              Color(0xFF06c238)],
                          ),
                        ),
                        child:  TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            //padding: const EdgeInsets.all(16.0),
                            textStyle: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                          child: const Text('Data Year',textAlign: TextAlign.center,),
                        ),
                        /* child: Align(
                        alignment: Alignment.topRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF06c238),
                                        Color(0xFF06c238),
                                        Color(0xFF06c238),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  //padding: const EdgeInsets.all(16.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {},
                                child: const Text(''),
                              ),
                            ],
                          ),
                        ),
                      ),*/
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.h, left: 5.w, right: 5.w),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Data year",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Form(
                          key: formGlobalKey,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 2.h, left: 5.w, right: 5.w),
                                child: DropdownButtonFormField(
                                  hint: Text(
                                    dropdownYear ?? "--Select Year--",
                                  ),
                                  decoration: InputDecoration(
                                    //  labelText: 'Choose an Country',
                                    isDense: true,
                                    // important line
                                    contentPadding:
                                    EdgeInsets.fromLTRB(25, 25, 25, 0),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  validator: (value) =>
                                  value == null ? "--Select Year--" : null,
                                  dropdownColor: Colors.white,
                                  value: dropdownYear,
                                  isExpanded: true,
                                  itemHeight: null,

                                  items: <String>[
                                    'Apple',
                                    'Mango',
                                    'Banana',
                                    'Peach'
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),

                                  // items: state_data.map<DropdownMenuItem<String>>(
                                  //         (State1 state) {
                                  //       return DropdownMenuItem<String>(
                                  //         value:
                                  //         "${state.id.toString()},${state.name.toString()}",
                                  //         child: Text(
                                  //           state.name ?? "",
                                  //           style: TextStyle(fontSize: 15.sp),
                                  //           overflow: TextOverflow.ellipsis,
                                  //         ),
                                  //       );
                                  //     }).toList(),

                                  onChanged: (newValue) {
                                    formGlobalKey.currentState?.validate();
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 2.h, left: 5.w, right: 5.w),
                                child: DropdownButtonFormField(
                                  hint: Text(
                                    dropdownSeason ?? "--Select Season--",
                                  ),
                                  decoration: InputDecoration(
                                    //  labelText: 'Choose an Country',
                                    isDense: true,
                                    // important line
                                    contentPadding:
                                    EdgeInsets.fromLTRB(25, 25, 25, 0),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  validator: (value) =>
                                  value == null ? "--Select Season--" : null,
                                  dropdownColor: Colors.white,
                                  value: dropdownSeason,
                                  isExpanded: true,
                                  itemHeight: null,

                                  items: <String>[
                                    'Apple',
                                    'Mango',
                                    'Banana',
                                    'Peach'
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),

                                  // items: state_data.map<DropdownMenuItem<String>>(
                                  //         (State1 state) {
                                  //       return DropdownMenuItem<String>(
                                  //         value:
                                  //         "${state.id.toString()},${state.name.toString()}",
                                  //         child: Text(
                                  //           state.name ?? "",
                                  //           style: TextStyle(fontSize: 15.sp),
                                  //           overflow: TextOverflow.ellipsis,
                                  //         ),
                                  //       );
                                  //     }).toList(),

                                  onChanged: (newValue) {
                                    formGlobalKey.currentState?.validate();
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 40.h,left: 10.w,right: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 4.5.h,
                                      margin: EdgeInsets.only(top: 2.h),
                                      decoration: const ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(6))),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [Color(0xFF06c238),
                                            Color(0xFF06c238)],
                                        ),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shadowColor: Colors.transparent,
                                          backgroundColor: Colors.transparent,
                                          minimumSize:
                                          Size(MediaQuery.of(context).size.width, 40),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(6), // <-- Radius
                                          ),
                                        ),
                                        child: Text('Back',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15.sp)),
                                      ),
                                    ),
                                    Container(
                                      width: 25.w,
                                      height: 4.5.h,
                                      margin: EdgeInsets.only(top: 2.h),
                                      decoration: const ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(6))),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [Color(0xFF06c238),
                                            Color(0xFF06c238)],
                                        ),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          if (formGlobalKey.currentState!.validate()) {
                                            formGlobalKey.currentState?.save();

                                          } else {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    "Please Select Year & Season"),
                                              ),
                                            );
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shadowColor: Colors.transparent,
                                          backgroundColor: Colors.transparent,
                                          minimumSize:
                                          Size(MediaQuery.of(context).size.width, 40),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(6), // <-- Radius
                                          ),
                                        ),
                                        child: Text('Next',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15.sp)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )
          );
        },
    );
  }
}
