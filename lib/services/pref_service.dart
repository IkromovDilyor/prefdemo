import 'dart:convert';

import 'package:prefdemo/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs{
  //NameRelated
  static void storeName(String name)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.setString("name", name);
  }
  // ignore: missing_return
  static Future <bool> removeName()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.remove("name");
  }
  static Future <String> loadName()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString("name");
  }
  //UserRelated
  static storeUser(User user)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String stringUser=jsonEncode(user);
    prefs.setString("user", stringUser);
  }
  // ignore: missing_return
  static Future <bool> removeUser()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
  static Future <User> loadUser()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String stringUser=prefs.getString("user");
    if(stringUser==null||stringUser.isEmpty){
      return null;
    }
    Map map=jsonDecode(stringUser);
    return User.fromJson(map);
  }
}