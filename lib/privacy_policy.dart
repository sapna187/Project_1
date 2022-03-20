import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/main.dart';
import 'package:get_app/saved_task.dart';
import 'package:get_app/theme.dart';

import 'controllers/auth_controller.dart';
import 'home_screen.dart';

class DevNotes extends StatefulWidget {
  const DevNotes({Key? key}) : super(key: key);

  @override
  State<DevNotes> createState() => _DevNotesState();
}

class _DevNotesState extends State<DevNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0437F2),

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF0437F2),
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Developer's Note",
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
                  onTap: (){
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
                    SizedBox(width: 10.0,),
                    SizedBox(
                      height: 180,
                      width: 180,
                      child: Image.asset('assets/images/pikachu_transparent.png',
                        fit: BoxFit.contain,),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      SizedBox(height: 18,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                      SizedBox(height: 18,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "This application is developed for demo purpose only.\nRe - distribution of this app or the source code in any format is strictly prohibited by its developer.",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                      SizedBox(height: 18.0,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Contact developer at...",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.amber,
                          ),
                          SizedBox(width: 5,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "roman95181@gmail.com",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}

