class UserModel {
  String? userId;
  String? name;
  String? email;
  String? pic;

  UserModel({required this.userId, required this.name,required this.email,required this.pic});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    pic = json['pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = userId;
    data['name'] = name;
    data['email'] = email;
    data['pic'] = pic;
    return data;
  }
}
