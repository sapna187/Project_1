import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/main.dart';
import 'package:get_app/privacy_policy.dart';
import 'package:get_app/saved_task.dart';
import 'package:get_app/theme.dart';

import 'controllers/auth_controller.dart';

void main() => runApp(
  GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My task",
    home: HomeScr(),
  ),
);
class HomeScr extends StatefulWidget {

  @override
  State<HomeScr> createState() => _HomeState();
}

class _HomeState extends State<HomeScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0437F2),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0437F2),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Home Screen",
          style: TextStyle(
            color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 18.0),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Color(0xFFFCF55F),

        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

              UserAccountsDrawerHeader (

                decoration: BoxDecoration(
                  color: Color(0xFF0437F2),
                ),

                currentAccountPicture: CircleAvatar(
                  child: Image.asset('assets/images/circle_logo.png'),
                  backgroundColor: Colors.white,
                ),

                accountName:Text("User Name",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),),

                accountEmail: Text("usersemail@email.com",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white
                  ),),

              ),

              ListTile(
                leading: Icon(Icons.home_filled,
                  color: Color(0xFF0437F2),),
                title: Text("Home",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0437F2),
                  ),),
                onTap: (){
                  Get.to(
                    HomeScr(),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.collections_bookmark_rounded,
                  color: Color(0xFF0437F2),),
                title: Text("Saved Notes",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0437F2),
                  ),
                ),
                onTap: (){

                  Get.to(
                      Task(),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.developer_mode_rounded,
                  color: Color(0xFF0437F2),),
                title: Text("Developer's Note",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0437F2),
                  ),),
                onTap: (){
                  Get.to(
                    DevNotes(),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.color_lens_rounded,
                  color: Color(0xFF0437F2),),
                title: Text("Change Theme",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0437F2),
                  ),),
                onTap: () {
                  Get.to(ChangeTheme());
                },
              ),

              ListTile(
                leading: Icon(Icons.logout,
                  color: Color(0xFF0437F2),),
                title: Text("Log Out",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0437F2),
                  ),),
                onTap: (){
                  AuthController.authInstance.signOut();
                },
              )

            ]
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  SizedBox(
                    height: 170,
                    width: 170,
                    child: Image.asset(
                      'assets/images/pikachu_transparent.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
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
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hey ! How are you ?",
                        style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Welcome to my App (developed by Sapna)",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Some features of this App are :-",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "You can Save your Notes",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "You can change the theme",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "You can make your account",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "This App is built by using GetX Frameworks, Firebase Authentication, and Flutter Material UI.\nYou can use the Menu Icon at the top left to navigate.",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                            fontFamily: 'Poppins'),
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