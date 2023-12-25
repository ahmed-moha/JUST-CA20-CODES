class UserModel {
  String? name;
  String? phone;
  String? photo;



  UserModel({this.name,this.phone,this.photo});


  UserModel.fromJson(Map<String,dynamic> json) {
    name=json["name"];
    phone=json["phone"].toString();
    photo=json["photo"];
  }
}