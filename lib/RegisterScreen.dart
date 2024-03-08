import 'dart:convert';
import 'dart:io';

//import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:kosher_climate_app_flutter/apiresponse/RegisterResponse.dart';
import 'package:kosher_climate_app_flutter/apiresponse/RetriveState.dart';
import 'package:kosher_climate_app_flutter/model/RegisterDetails.dart';
import 'package:kosher_climate_app_flutter/resources/Resources.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'apilist/ViewDialog.dart';
import 'model/StateResponse.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isshowPasswords = false;
  final formGlobalKey = GlobalKey<FormState>();
  String? dropdownState, dropdownStateId, dropdownStateName;
  List<State1> state_data = [];

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController mobilenocontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confpasswordcontroller = TextEditingController();
  TextEditingController orgcodecontroller = TextEditingController();

  var appName = "",
      packageName = "",
      version = "",
      buildNumber = "",
      deviceName = "",
      deviceManufacturer = "",
      device = "",
      deviceDetails = "",
      deviceId = "",
      username = "",
      userPassword = "",
      relese_id = "";

  Future<void> showStateData() async {
    http.Response? response = await RetriveState().getCountries();
    var jsonResponse = json.decode(response!.body);
    var loginResponse = StateResponse.fromJson(jsonResponse);

    for (int i = 0; i < loginResponse.state!.length; i++) {
      state_data.add(loginResponse.state![i]);
    }

    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  bool isMobileNumberValid(mobileno) {
   // String regexPattern = r'^(?:[6-9])?[0-9]{10}$';
    String regexPattern = '^[6-9]{1}[0-9]{9}';
    var regExp = RegExp(regexPattern);

    if (!regExp.hasMatch(mobileno)) {
      return false;
    }
    return true;
  }

  Future<void> showDeviceDetails() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    appName = packageInfo.appName;
    packageName = packageInfo.packageName;
    version = packageInfo.version;
    buildNumber = packageInfo.buildNumber;

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    //Android
    AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
    //iOS
    //IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;

    if (Platform.isAndroid) {
      deviceName = androidDeviceInfo.brand.toString();
      deviceManufacturer = androidDeviceInfo.manufacturer.toString();
      device = androidDeviceInfo.display.toString();
      relese_id = androidDeviceInfo.version.release.toString();
      deviceId = androidDeviceInfo.version.incremental.toString();
      //deviceDetails = "$deviceName   $device";

      print(
          "usermobiledevide    $deviceName   $deviceManufacturer  $device  $deviceId");
      print("userdevide    $appName   $packageName  $version  $buildNumber");
      print("android alldeta   $androidDeviceInfo");
    }

    //Future.delayed( const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  void initState() {
    super.initState();
    showStateData();
    showDeviceDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveSizer(
        builder: (p0, p1, p2) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5.h),
                    child: Center(
                      child: Image.asset(
                        "assets/kosher.png",
                        height: 80,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.h, left: 5.w, right: 5.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        StringResources.signup,
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Form(
                      key: formGlobalKey,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 2.h, left: 5.w, right: 5.w),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: usernamecontroller,
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
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                label: const Text('Name'),
                                prefixIcon: Icon(Icons.people),
                                hintText: 'Enter your Name',
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
                                top: 2.h, left: 5.w, right: 5.w),
                            child: TextFormField(
                              controller: mobilenocontroller,
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
                                top: 2.h, left: 5.w, right: 5.w),
                            child: TextFormField(
                              controller: mobilenocontroller,
                              keyboardType: TextInputType.text,
                              enabled: false,
                              enableInteractiveSelection: false,
                              focusNode: FocusNode(),
                              readOnly: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field can not be empyty';
                                }
                                return null;
                              },
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
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
                            margin: EdgeInsets.only(
                                top: 2.h, left: 5.w, right: 5.w),
                            child: TextFormField(
                              controller: passwordcontroller,
                              obscureText: !isshowPasswords,
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
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                label: const Text('Password'),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isshowPasswords = !isshowPasswords;
                                    });
                                  },
                                  icon: Icon(
                                    isshowPasswords
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: 'Enter your Password',
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
                                top: 2.h, left: 5.w, right: 5.w),
                            child: TextFormField(
                              controller: confpasswordcontroller,
                              obscureText: !isshowPasswords,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field can not be empyty';
                                } else if (passwordcontroller.text.toString() !=
                                    confpasswordcontroller.text.toString()) {
                                  return 'Password Mis-Match Re-Enter';
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
                                label: const Text('Confirm Password'),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isshowPasswords = !isshowPasswords;
                                    });
                                  },
                                  icon: Icon(
                                    isshowPasswords
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: 'Enter your ConFirm Password',
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
                                top: 2.h, left: 5.w, right: 5.w),
                            child: TextFormField(
                              controller: orgcodecontroller,
                              keyboardType: TextInputType.number,
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
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                label: const Text('Organization Code'),
                                prefixIcon: Icon(Icons.code),
                                hintText: 'Enter your Organization Code',
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
                                top: 2.h, left: 5.w, right: 5.w),
                            child: DropdownButtonFormField(
                              hint: Text(
                                dropdownState ?? "  --Select State-- ",
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
                                  value == null ? "  --Select State-- " : null,
                              dropdownColor: Colors.white,
                              value: dropdownState,
                              isExpanded: true,
                              itemHeight: null,

                              // items: <String>[
                              //   'Apple',
                              //   'Mango',
                              //   'Banana',
                              //   'Peach'
                              // ].map<DropdownMenuItem<String>>((String value) {
                              //   return DropdownMenuItem<String>(
                              //     value: value,
                              //     child: Text(value),
                              //   );
                              // }).toList(),

                              items: state_data.map<DropdownMenuItem<String>>(
                                  (State1 state) {
                                return DropdownMenuItem<String>(
                                  value:
                                      "${state.id.toString()},${state.name.toString()}",
                                  child: Text(
                                    state.name ?? "",
                                    style: TextStyle(fontSize: 15.sp),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                );
                              }).toList(),

                              onChanged: (newValue) {
                                dropdownState = newValue;
                                dropdownStateId = dropdownState?.split(",")[0];
                                dropdownStateName =
                                    dropdownState?.split(",")[1];
                                print(
                                    "stateid  $dropdownStateId  $dropdownStateName");
                                setState(() {});
                                formGlobalKey.currentState?.validate();
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 2.h, left: 10.w, right: 10.w),
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF06c238), Color(0xFF06c238)],
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () async {
                                if (formGlobalKey.currentState!.validate()) {
                                  formGlobalKey.currentState?.save();

                                  ViewDialog(context: context)
                                      .showLoadingIndicator(
                                          "Register Please Wait.....",
                                          "Register Screen",
                                          context);

                                  String name =
                                      usernamecontroller.text.toString();
                                  String mobileNo =
                                      mobilenocontroller.text.toString();
                                  String userName =
                                      mobilenocontroller.text.toString();
                                  String password =
                                      passwordcontroller.text.toString();
                                  String company_code =
                                      orgcodecontroller.text.toString();

                                  http.Response? response =
                                      await RegisterResponse().registerApi(
                                          name,
                                          mobileNo,
                                          userName,
                                          password,
                                          company_code,
                                          version,
                                          buildNumber,
                                          relese_id,
                                          deviceName,
                                          deviceManufacturer,
                                          dropdownStateId,
                                          dropdownStateName,
                                          "fcmToken");

                                  var jsonresponse = jsonDecode(response!.body);

                                  if (response.statusCode == 200) {
                                    ViewDialog(context: context)
                                        .hideOpenDialog();

                                    var responseDet =
                                        RegisterDetails.fromJson(jsonresponse);

                                    String errormessage =
                                        jsonresponse["message"];
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(errormessage),
                                      ),
                                    );

                                    Navigator.pushNamed(context, "/loginpage");
                                  } else if (response.statusCode == 403) {
                                    ViewDialog(context: context)
                                        .hideOpenDialog();

                                    String errormessage =
                                        jsonresponse["message"];
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(errormessage),
                                      ),
                                    );
                                  } else if (response.statusCode == 422) {
                                    ViewDialog(context: context)
                                        .hideOpenDialog();

                                    String errormessage =
                                        jsonresponse["message"];
                                    String errormobile = jsonresponse["mobile"];
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(errormobile),
                                      ),
                                    );
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Please enter All fields"),
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
                                      BorderRadius.circular(12), // <-- Radius
                                ),
                              ),
                              child: Text('Sign Up',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.sp)),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Already have an account..?? \t",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/loginpage");
                          },
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Signin",
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h, left: 5.w, right: 5.w),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            Text(
                              "1.0.0 - Live",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "Developed by CROPINTELLIX PRIVATE LIMITED",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        )),
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
