import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:kosher_climate_app_flutter/resources/Resources.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FarmerOnBoarding extends StatefulWidget {
  const FarmerOnBoarding({super.key});

  @override
  State<FarmerOnBoarding> createState() => _FarmerOnBoardingState();
}

class _FarmerOnBoardingState extends State<FarmerOnBoarding> {
  final formGlobalKey = GlobalKey<FormState>();
  String? gender = "Female";
  int? selectedOption;
  String? dropdownMobileAcc, dropdownRelwithfly;
  TextEditingController mobilenocontroller = TextEditingController();
  bool isMobileNumberValid(mobileno) {
    // String regexPattern = r'^(?:[6-9])?[0-9]{10}$';
    String regexPattern = '^[6-9]{1}[0-9]{9}';
    var regExp = RegExp(regexPattern);

    if (!regExp.hasMatch(mobileno)) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return SafeArea(
            top: true,
            minimum: const EdgeInsets.all(5),
            bottom: true,
            child: Scaffold(
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
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
                                colors: [Color(0xFF06c238), Color(0xFF06c238)],
                              ),
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                //padding: const EdgeInsets.all(16.0),
                                textStyle: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
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
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          width: 70.w,
                          height: 4.7.h,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(7))),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF06c238), Color(0xFF06c238)],
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              //padding: const EdgeInsets.all(16.0),
                              textStyle: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Personal Details',
                              textAlign: TextAlign.center,
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
                                  child: TextFormField(
                                    //controller: authcontroller.mobileNoController,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Field can not be empyty';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      formGlobalKey.currentState?.validate();
                                    },
                                    decoration: InputDecoration(
                                      contentPadding:
                                      EdgeInsets.fromLTRB(15, 15, 15, 0),
                                      label: const Text('User Name'),
                                      prefixIcon: Icon(Icons.people),
                                      hintText: 'Enter your User Name',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        const BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // width: 100.w,
                                  // height: 10.h,
                                    margin: EdgeInsets.only(
                                        left: 5.w, right: 5.w, top: 1.h),
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Gender",
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: ListTile(
                                                  contentPadding: EdgeInsets
                                                      .all(0),
                                                  title: const Text('Female'),
                                                  leading: Radio(
                                                    fillColor: MaterialStateColor
                                                        .resolveWith((states) =>
                                                        Color(0XFF06c238)),
                                                    value: "Female",
                                                    groupValue: gender,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        gender = value;
                                                        print(gender);
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: ListTile(
                                                  contentPadding: EdgeInsets
                                                      .all(0),
                                                  title: const Text('Male'),
                                                  leading: Radio(
                                                    fillColor: MaterialStateColor
                                                        .resolveWith((states) =>
                                                        Color(0XFF06c238)),
                                                    value: "Male",
                                                    groupValue: gender,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        gender = value;
                                                        print(gender);
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: ListTile(
                                                  contentPadding: EdgeInsets
                                                      .all(0),
                                                  title: const Text('Other'),
                                                  leading: Radio(
                                                    fillColor: MaterialStateColor
                                                        .resolveWith((states) =>
                                                        Color(0XFF06c238)),
                                                    value: "Other",
                                                    groupValue: gender,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        gender = value;
                                                        print(gender);
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ]
                                    )
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5.w, right: 5.w),
                                  child: TextFormField(
                                    //controller: authcontroller.mobileNoController,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Field can not be empyty';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      formGlobalKey.currentState?.validate();
                                    },
                                    decoration: InputDecoration(
                                      contentPadding:
                                      EdgeInsets.fromLTRB(15, 15, 15, 0),
                                      label: const Text('Guardian Name'),
                                      prefixIcon: Icon(Icons.person),
                                      hintText: 'Enter your Guardian Name',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        const BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                        width: 42.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, left: 5.w),
                                        child: Text(
                                          "Mobile Access",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 42.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, right: 5.w),
                                        child: Text(
                                          "Relationship with Owner",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                        width: 42.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, left: 5.w),
                                        child: DropdownButtonFormField(
                                          hint: Text(
                                            dropdownMobileAcc ?? "--Select--",
                                          ),
                                          decoration: InputDecoration(
                                            //  labelText: 'Choose an Country',
                                            isDense: true,
                                            // important line
                                            contentPadding:
                                            EdgeInsets.fromLTRB(25, 25, 25, 0),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey,
                                                  width: 1.0),
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
                                          value == null ? "--Select--" : null,
                                          dropdownColor: Colors.white,
                                          value: dropdownMobileAcc,
                                          isExpanded: true,
                                          itemHeight: null,

                                          items: <String>[
                                            'Apple',
                                            'Mango',
                                            'Banana',
                                            'Peach'
                                          ].map<DropdownMenuItem<String>>((
                                              String value) {
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
                                            formGlobalKey.currentState
                                                ?.validate();
                                          },
                                        ),
                                      ),
                                      Container(
                                        width: 42.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, right: 5.w),
                                        child: DropdownButtonFormField(
                                          hint: Text(
                                            dropdownRelwithfly ?? "--Select--",
                                          ),
                                          decoration: InputDecoration(
                                            //  labelText: 'Choose an Country',
                                            isDense: true,
                                            // important line
                                            contentPadding:
                                            EdgeInsets.fromLTRB(25, 25, 25, 0),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey,
                                                  width: 1.0),
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
                                          value == null ? "--Select--" : null,
                                          dropdownColor: Colors.white,
                                          value: dropdownRelwithfly,
                                          isExpanded: true,
                                          itemHeight: null,

                                          items: <String>[
                                            'Apple',
                                            'Mango',
                                            'Banana',
                                            'Peach'
                                          ].map<DropdownMenuItem<String>>((
                                              String value) {
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
                                            formGlobalKey.currentState
                                                ?.validate();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 1.h, left: 5.w, right: 5.w),
                                  child: TextFormField(
                                    //controller: authcontroller.mobileNoController,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Field can not be empyty';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      formGlobalKey.currentState?.validate();
                                    },
                                    decoration: InputDecoration(
                                      contentPadding:
                                      EdgeInsets.fromLTRB(15, 15, 15, 0),
                                      label: const Text(StringResources.aadhar),
                                      prefixIcon: Icon(Icons.account_circle),
                                      hintText: 'Enter your Aadhaar / Vote',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        const BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(

                                  child: Row(
                                    children: [
                                      Container(
                                        width: 70.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, left: 5.w),
                                        child: TextFormField(
                                          //controller: mobilenocontroller,
                                          keyboardType: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter.digitsOnly
                                          ], // Only numbers can be entered
                                          //maxLength: 10,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Field can not be empyty';
                                            } else if (!isMobileNumberValid(
                                                mobilenocontroller.text.toString())) {
                                              return "enter 10 digit mobile number";
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            formGlobalKey.currentState?.validate();
                                          },
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            label: const Text('Mobile Number'),
                                            prefixIcon: Icon(Icons.phone_android),
                                            hintText: 'Enter your Mobile No',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 1.h,left: 1.w),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black38),
                                          borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        width: 18.w,
                                        height: 5.h,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.green,
                                            //padding: const EdgeInsets.all(16.0),
                                            textStyle: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold,
                                            color: Colors.lightGreen),
                                          ),
                                          onPressed: () {},
                                          child: const Text('Verify'),
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
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(1.w),
                                    margin: EdgeInsets.only(
                                        top: 1.h, left: 5.w, right: 5.w),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 1.h, left: 5.w, right: 5.w),
                                  child: TextFormField(
                                    //controller: authcontroller.mobileNoController,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Field can not be empyty';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      formGlobalKey.currentState?.validate();
                                    },
                                    decoration: InputDecoration(
                                      contentPadding:
                                      EdgeInsets.fromLTRB(15, 15, 15, 0),
                                      label: const Text(StringResources.plot_id),
                                      prefixIcon: Icon(Icons.phone_android),
                                      hintText: 'Enter your Farmer Unique ID',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        const BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                        width: 40.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, left: 5.w),
                                        child: TextFormField(
                                          //controller: authcontroller.mobileNoController,
                                          keyboardType: TextInputType.text,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Field can not be empyty';
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            formGlobalKey.currentState?.validate();
                                          },
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            label: const Text(StringResources.total_area),
                                           // prefixIcon: Icon(Icons.phone_android),
                                            hintText: 'Total Area in',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 45.w,
                                        margin: EdgeInsets.only(top: 1.h, right: 5.w),
                                        child: TextFormField(
                                          //controller: authcontroller.mobileNoController,
                                          keyboardType: TextInputType.text,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Field can not be empyty';
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            formGlobalKey.currentState?.validate();
                                          },
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            label: const Text(StringResources.total_area_in_acres),
                                           // prefixIcon: Icon(Icons.phone_android),
                                            hintText: 'Total Area in Acres',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                        width: 40.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, left: 5.w),
                                        child: TextFormField(
                                          //controller: authcontroller.mobileNoController,
                                          keyboardType: TextInputType.text,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Field can not be empyty';
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            formGlobalKey.currentState?.validate();
                                          },
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            label: const Text(StringResources.own_area),
                                            // prefixIcon: Icon(Icons.phone_android),
                                            hintText: 'Own Area in',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 45.w,
                                        margin: EdgeInsets.only(top: 1.h, right: 5.w),
                                        child: TextFormField(
                                          //controller: authcontroller.mobileNoController,
                                          keyboardType: TextInputType.text,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Field can not be empyty';
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            formGlobalKey.currentState?.validate();
                                          },
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            label: const Text(StringResources.own_area_in_acres),
                                            // prefixIcon: Icon(Icons.phone_android),
                                            hintText: 'Own Area in Acres',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                        width: 40.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, left: 5.w),
                                        child: TextFormField(
                                          //controller: authcontroller.mobileNoController,
                                          keyboardType: TextInputType.text,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Field can not be empyty';
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            formGlobalKey.currentState?.validate();
                                          },
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            label: const Text(StringResources.lease_area),
                                            // prefixIcon: Icon(Icons.phone_android),
                                            hintText: 'Lease Area in',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 45.w,
                                        margin: EdgeInsets.only(top: 1.h, right: 5.w),
                                        child: TextFormField(
                                          //controller: authcontroller.mobileNoController,
                                          keyboardType: TextInputType.text,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Field can not be empyty';
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            formGlobalKey.currentState?.validate();
                                          },
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            label: const Text(StringResources.lease_area_in_acres),
                                            // prefixIcon: Icon(Icons.phone_android),
                                            hintText: 'Lease Area in Acres',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4.h,left: 7.w,right: 7.w,bottom: 3.h),
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
                        )
                      ],
                    ),
                  ),
                )
            )
        );
      },
    );
  }
}
