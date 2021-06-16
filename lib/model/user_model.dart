class User{
  String id;
  String email;
  String password;
String name;
int phone;
String confirm;
  User({this.id,this.email,this.password,this.name,this.phone,this.confirm});
  User.from({this.email,this.password,this.confirm,this.name,this.phone});
  User.fromJson(Map<String, dynamic> json)
  :id=json["id"],
  email=json["email"],
  password=json["password"],
  name=json["name"],
  phone=json["phone"],
  confirm=json["confirm"]
  ;

  Map<String, dynamic> toJson()=>{
    "id":id,
    "email":email,
    "password":password,
    "name":name,
    "phone":phone,
    "confirm":confirm
  };

}