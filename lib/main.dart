import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/log_in.dart';
import 'package:get_app/sign_up.dart';
import 'package:get_app/home_screen.dart';
import 'package:get_app/themes.dart';

import 'constants/firebase_constants.dart';
import 'controllers/auth_controller.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  firebaseInitialization.then((value) {
    // we are going to inject the auth controller over here!
    Get.put(AuthController());
  });

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My task",
      home: Home(),
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
    ),
  );
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //our form key
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //Sign Up button
    final signUpButton = Material(
      elevation: 0,
      borderRadius: BorderRadius.circular(30),
      color: Color(0xFF0437F2),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
         Get.to(
           SignUp(),
         );
        },
        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    //Sign Up button
    final LogInButton = Material(
      elevation: 0,
      borderRadius: BorderRadius.circular(30),
      color: Colors.black12,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Get.to(
            LogIn(),
          );
        },
        child: Text(
          "Log In",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    //Screen Designing
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 20.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 100, 5, 10),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 18.0,),
          Column(
            children: [
              Text(
                "Hello User ! Join Us and take a look on",
                style: TextStyle(
                  color: Colors.black45,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "this demo App by Sapna",
                style: TextStyle(
                  color: Colors.black45,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18))),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    signUpButton,
                    SizedBox(
                      height: 20,
                    ),
                    LogInButton,
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(
                            HomeScr(),
                          );
                        },
                        child: Text(
                          "Skip For Now",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0437F2),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}