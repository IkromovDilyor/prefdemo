import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/pages/three_page.dart';
import 'package:prefdemo/services/pref_service.dart';

class SecondPage extends StatefulWidget {
  static final String id="second_page";
  const SecondPage({Key key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  void _doLogin(){
    String email=emailController.text.toString().trim();
    String password=passwordController.text.toString().trim();
    User user =User.from(email:email,password: password);
    Prefs.storeUser(user);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Colors.white,
        child: ListView(
          children: [
            Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                //#image
                Container(
                  height: 150,
                  width: 200,
                  child:Center(
                    child: Image(image: AssetImage("assets/images/1.png"),fit: BoxFit.cover,),

                  )
        ),
                SizedBox(height: 15,),
                Text("Welcome back!",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text("Log in to your existand account of Q Allure",style: TextStyle(color: Colors.grey,fontSize: 15),),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                    //margin: EdgeInsets.only(left: 20,right: 20),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.grey[200]
                  ),
                  child:Center(
                    child:  TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "email",
                          border: InputBorder.none,
                          icon: Icon(Icons.person,color: Colors.blue,)
                      ),
                    ),
                  )
                ),
                SizedBox(height: 10,),
                Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    //margin: EdgeInsets.only(left: 20,right: 20),
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.grey[200]
                    ),
                    child:Center(
                      child:  TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            hintText: "password",
                            border: InputBorder.none,
                            icon: Icon(Icons.lock,color: Colors.blue,)
                        ),
                      ),
                    )
                ),
                SizedBox(height: 10,),


                Text("                                             Forgot Password?",style: TextStyle(color: Colors.black,fontSize: 15),),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[700],
                  ),
                  child: Center(
                    child: FlatButton(
                      onPressed: (){
                        // ignore: unnecessary_statements
                        _doLogin;
                      },
                      child: Center(
                        child: Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      )
                    )
                  )
                ),
                SizedBox(height: 30,),
                Text("Or connect using",style: TextStyle(color: Colors.grey,fontSize: 20),),
                SizedBox(height: 20,),

                Row(

                  children: [
                    Expanded(
                        child: Container(
                         // margin: EdgeInsets.only(left: 15,right: 7),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[700]
                          ),
                          child: Center(
                              child:Row(
                                children: [
                                  Text("  f",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                  Text("   Facebook",style: TextStyle(color: Colors.white,fontSize: 20),),
                                ],
                              )
                          ),

                    )),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8,right: 15),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red
                          ),
                          child: Center(
                            child:Row(
                              children: [
                                Text("  G",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("  Google",style: TextStyle(color: Colors.white,fontSize: 20),),
                              ],
                            )
                          ),

                        )
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don't have an account?",textAlign: TextAlign.end,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context,ThreePage.id);

                      },
                      child:Text("  Sign Up     ",style: TextStyle(color: Colors.blue),) ,
                    ),

                  ],
                ),

                
                


              ],
            )
          ],
        ),
      ),
    );
  }
}
