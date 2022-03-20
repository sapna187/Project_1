import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/home_screen.dart';
import 'controllers/auth_controller.dart';
import 'log_in.dart';

class SignUp extends StatelessWidget {

  final _auth = FirebaseAuth.instance;

  //editing controller
  final fullNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Full name field
    final fullNameField = TextFormField(
      autofocus: false,
      controller: fullNameEditingController,
      keyboardType: TextInputType.name,

      //validator: () {},
      onSaved: (value) {
        fullNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Full Name",
        hintStyle: TextStyle(
            fontFamily: 'Poppins'
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //Email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,

      //validator: () {},
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        hintStyle: TextStyle(
            fontFamily: 'Poppins'
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,

      //validator: () {},
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        hintStyle: TextStyle(
            fontFamily: 'Poppins'
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //Sign Up button
    final signUpButton = Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(30),
      color: Color(0xFF0437F2),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          // this is for the register function in auth controller
          AuthController.authInstance.register(
              fullNameEditingController.text.trim(),
              emailEditingController.text.trim(),
              passwordEditingController.text.trim(),
          );
        },
        child: Text("Sign Up",
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

    //Screen Designing
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 35, 20, 0),
              child: Container(
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(()=>HomeScr());
                    },
                    child: Text(
                      "Skip Sign Up",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),

            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/logo.png',
                      fit: BoxFit.contain,),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  fullNameField,

                  SizedBox(height: 30,),
                  emailField,
                  SizedBox(height: 25,),

                  passwordField,
                  SizedBox(height: 25,),

                  signUpButton,
                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account ?",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            LogIn(),
                          );
                        },
                        child: Text(" Log In",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color:  Color(0xFF0437F2),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )  ,
                      ),

                    ],
                  )

                ],
              ),
            ),
          ],
        ),
    );
  }

  // postDetailsToFirestore() async{
  //   //calling our firestore
  //   //calling user model
  //   //sending value to firestore
  //
  //   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  //   User? user = _auth.currentUser;
  //
  //   UserModel userModel = UserModel();
  //
  //   // writing all the values
  //   userModel.email = user!.email;
  //   userModel.uid = user.uid;
  //   userModel.fullName = fullNameEditingController.text;
  //
  //   await firebaseFirestore
  //       .collection("users")
  //       .doc(user.uid)
  //       .set(userModel.toMap());
  //   // Fluttertoast.showToast(msg: "Account created successfully :) ");
  //
  // }
}




