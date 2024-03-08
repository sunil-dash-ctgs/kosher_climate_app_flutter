
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_cupertino_app.dart';
import 'package:kosher_climate_app_flutter/controller/AuthController.dart';
import 'package:kosher_climate_app_flutter/resources/Resources.dart';
//import 'package:device_info_plus/device_info_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:retrofit/retrofit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isshowPasswords = false;
  final formGlobalKey = GlobalKey<FormState>();
  final authcontroller = Get.put(AuthController());

  @override
  void initState() {
    super.initState();
    authcontroller.showDeviceDetails(context);
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
                    margin: EdgeInsets.only(top: 15.h),
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
                        StringResources.signin,
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
                              controller: authcontroller.mobileNoController,
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
                              controller: authcontroller.passwordController,
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
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Forgot Password..??",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                colors: [Color(0xFF06c238),
                                           Color(0xFF06c238)],
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () async {
                                if (formGlobalKey.currentState!.validate()) {
                                  formGlobalKey.currentState?.save();

                                  authcontroller.loginApi(context);

                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          "Please enter valid name and password"),
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
                              child: Text('Login',
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
                            "Don\'t have a account..?? \t",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/registerpage");
                          },
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Signup",
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
                              StringResources.versionname,
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              StringResources.developby,
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
