import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/services/pref_service.dart';
class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.only(right: 15,left: 15),
              height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[200]
            ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                  icon: Icon(Icons.email,color: Colors.blue,)
                ),
              ),

            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.only(right: 15,left: 15),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    icon: Icon(Icons.lock,color: Colors.blue,)
                ),
              ),

            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue
              ),
              child: FlatButton(
                onPressed: _doLogin,
                child: Text("Login",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      )
    );
  }
}
