/// response_code : "1"
/// message : "User Found"
/// user : {"username":"devesh parihar","email":"devesh@gmail.com","mobile":"9876543210","profile_pic":"https://developmentalphawizz.com/SOD_New/uploads/profile_pics/63d0c06d643a5.png"}

class GetUserModel {
  GetUserModel({
      String? responseCode, 
      String? message, 
      User? user,}){
    _responseCode = responseCode;
    _message = message;
    _user = user;
}

  GetUserModel.fromJson(dynamic json) {
    _responseCode = json['response_code'];
    _message = json['message'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _responseCode;
  String? _message;
  User? _user;
GetUserModel copyWith({  String? responseCode,
  String? message,
  User? user,
}) => GetUserModel(  responseCode: responseCode ?? _responseCode,
  message: message ?? _message,
  user: user ?? _user,
);
  String? get responseCode => _responseCode;
  String? get message => _message;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['response_code'] = _responseCode;
    map['message'] = _message;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// username : "devesh parihar"
/// email : "devesh@gmail.com"
/// mobile : "9876543210"
/// profile_pic : "https://developmentalphawizz.com/SOD_New/uploads/profile_pics/63d0c06d643a5.png"

class User {
  User({
      String? username, 
      String? email, 
      String? mobile, 
      String? profilePic,}){
    _username = username;
    _email = email;
    _mobile = mobile;
    _profilePic = profilePic;
}

  User.fromJson(dynamic json) {
    _username = json['username'];
    _email = json['email'];
    _mobile = json['mobile'];
    _profilePic = json['profile_pic'];
  }
  String? _username;
  String? _email;
  String? _mobile;
  String? _profilePic;
User copyWith({  String? username,
  String? email,
  String? mobile,
  String? profilePic,
}) => User(  username: username ?? _username,
  email: email ?? _email,
  mobile: mobile ?? _mobile,
  profilePic: profilePic ?? _profilePic,
);
  String? get username => _username;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get profilePic => _profilePic;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['profile_pic'] = _profilePic;
    return map;
  }

}