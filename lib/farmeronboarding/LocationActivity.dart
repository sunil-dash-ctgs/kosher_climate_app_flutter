
import 'package:flutter/material.dart';
import 'package:kosher_climate_app_flutter/resources/Resources.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LocationActivity extends StatefulWidget {
  const LocationActivity({super.key});

  @override
  State<LocationActivity> createState() => _LocationActivityState();
}

class _LocationActivityState extends State<LocationActivity> {
  final formGlobalKey = GlobalKey<FormState>();
  String? dropdowmState,dropdownDistrict,dropdownBlock,dropdownpanchayat,dropdownvillage;
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (p0, p1, p2) {
          return SafeArea(
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
                              StringResources.location_screen,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          child: Form(
                            key: formGlobalKey,
                            child: Column(
                              children: [
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
                                          StringResources.state,
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
                                          StringResources.district,
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
                                        width: 43.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, left: 5.w),
                                        child: DropdownButtonFormField(
                                          hint: Text(
                                            dropdowmState ?? "--State--",
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
                                          value == null ? "--State--" : null,
                                          dropdownColor: Colors.white,
                                          value: dropdowmState,
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
                                        width: 43.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, right: 5.w),
                                        child: DropdownButtonFormField(
                                          hint: Text(
                                            dropdownDistrict ?? "--District--",
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
                                          value == null ? "--District--" : null,
                                          dropdownColor: Colors.white,
                                          value: dropdownDistrict,
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
                                          StringResources.taluka,
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
                                          StringResources.panchayat,
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
                                        width: 43.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, left: 5.w),
                                        child: DropdownButtonFormField(
                                          hint: Text(
                                            dropdownBlock ?? "--Block--",
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
                                          value == null ? "--Block--" : null,
                                          dropdownColor: Colors.white,
                                          value: dropdownBlock,
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
                                        width: 43.w,
                                        margin: EdgeInsets.only(
                                            top: 1.h, right: 5.w),
                                        child: DropdownButtonFormField(
                                          hint: Text(
                                            dropdownpanchayat ?? "--Panchayat--",
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
                                          value == null ? "--Panchayat--" : null,
                                          dropdownColor: Colors.white,
                                          value: dropdownpanchayat,
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
                                          StringResources.village,
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
                                  child: DropdownButtonFormField(
                                    hint: Text(
                                      dropdownvillage ?? "--Village--",
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
                                    value == null ? "--Village--" : null,
                                    dropdownColor: Colors.white,
                                    value: dropdownvillage,
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
                                          StringResources.remark,
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
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
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                      EdgeInsets.fromLTRB(35, 35, 35, 35),
                                      label: const Text('User Name'),
                                      //  prefixIcon: Icon(Icons.people),
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
                                  margin: EdgeInsets.only(top: 20.h,left: 10.w,right: 10.w),
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
                ),
              )
          );
        },);
  }
}
