

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/pages/second_page.dart';
import 'package:prefdemo/services/pref_service.dart';

class ThreePage extends StatefulWidget {
  static final String id="three_page";
  const ThreePage({Key key}) : super(key: key);

  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final nameController=TextEditingController();
  final phoneController=TextEditingController();
  final confirmController=TextEditingController();


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
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.bottomLeft,
              child:  GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context,SecondPage.id);
                },
                child: Icon(Icons.arrow_back_rounded,),

              ),
            ),

            // Container(
            //
            //   alignment: Alignment.bottomLeft,
            //   height: 60,
            //   child: FlatButton(
            //     onPressed: (){
            //       Navigator.pushReplacementNamed(context, SecondPage.id);
            //     },
            //     child: Icon(Icons.arrow_back_rounded,),
            //   ),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                SizedBox(height: 40,),
                Text("Let's Get Started!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(height: 10,),
                Text("Create an account to Q Allure to get all features",style: TextStyle(color:Colors.grey,),),
                SizedBox(height: 30,),
                Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    //margin: EdgeInsets.only(left: 20,right: 20),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]
                    ),
                    child:Center(
                      child:  TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                            hintText: "name",
                            border: InputBorder.none,
                            icon: Icon(Icons.person,color: Colors.blue,)
                        ),
                      ),
                    )
                ),
                SizedBox(height: 15,),
                Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    //margin: EdgeInsets.only(left: 20,right: 20),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]
                    ),
                    child:Center(
                      child:  TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "email",
                            border: InputBorder.none,
                            icon: Icon(Icons.email,color: Colors.blue,)
                        ),
                      ),
                    )
                ),
                SizedBox(height: 15,),
                Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    //margin: EdgeInsets.only(left: 20,right: 20),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]
                    ),
                    child:Center(
                      child:  TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                            hintText: "Phone",
                            border: InputBorder.none,
                            icon: Icon(Icons.phone_android,color: Colors.blue,)
                        ),
                      ),
                    )
                ),
                SizedBox(height: 15,),
                Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    //margin: EdgeInsets.only(left: 20,right: 20),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
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
                SizedBox(height: 15,),
                Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    //margin: EdgeInsets.only(left: 20,right: 20),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]
                    ),
                    child:Center(
                      child:  TextField(
                        controller: confirmController,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            border: InputBorder.none,
                            icon: Icon(Icons.lock_open,color: Colors.blue,)
                        ),
                      ),
                    )
                ),
                SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[700]
                  ),
                  child:Center(
                    child:  Text("Create",style: TextStyle(color: Colors.white,fontSize: 25),),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(color: Colors.black,fontSize: 15),),
                    Text(" Login here",style: TextStyle(color: Colors.blueAccent,fontSize: 15,),)

                  ],
                )

              ],

            )
          ],
        ),
      ),
    );
  }
}
