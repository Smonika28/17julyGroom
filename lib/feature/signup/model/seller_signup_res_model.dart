// class SellerSignupModel {
//   bool? status;
//   int? statusCode;
//   Data? data;
//   String? message;
//
//   SellerSignupModel({this.status, this.statusCode, this.data, this.message});
//
//   SellerSignupModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     statusCode = json['statusCode'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//     message = json['message'];
//   }
//
//   SellerSignupModel.withError(String errorMsg) {
//     message = errorMsg;
//   }
//   insertToJson(Map<String, dynamic> json) {
//     return SellerSignupModel.fromJson(json);
//   }
//
//   insertToError(String errorMsg) {
//     return SellerSignupModel.withError(errorMsg);
//   }
// }
//
// class Data {
//   String? authToken;
//   User? user;
//
//   Data({this.authToken, this.user});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     authToken = json['auth_token'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['auth_token'] = this.authToken;
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     return data;
//   }
// }
//
// class User {
//   int? id;
//   String? firstName;
//   String? lastName;
//   String? email;
//   int? phone;
//   int? zipcode;
//   int? password;
//   int? confirmPassword;
//   String? userType;
//   User(
//       {this.id,
//       this.firstName,
//       this.lastName,
//       this.email,
//       this.phone,
//       this.zipcode,
//       this.password,
//       this.confirmPassword,
//       this.userType});
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     email = json['email'];
//     phone = json['phone'];
//     zipcode = json['zipcode'];
//     password = json['password'];
//     confirmPassword = json['confirm_password'];
//     userType = json['user_type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['first_name'] = this.firstName;
//     data['last_name'] = this.lastName;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['zipcode'] = this.zipcode;
//     data['password'] = this.password;
//     data['confirm_password'] = this.confirmPassword;
//     data['user_type'] = this.userType;
//     return data;
//   }
// }





class RegistrationModel {
  bool? status;
  int? statusCode;
  String? token;
  Data? data;
  String? message;

  RegistrationModel(
      {this.status, this.statusCode, this.token, this.data, this.message});

  RegistrationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    token = json['token'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }
  RegistrationModel.withError(String errorMsg) {
    message = errorMsg;
  }
  insertToJson(Map<String, dynamic> json) {
    return RegistrationModel.fromJson(json);
  }

  insertToError(String errorMsg) {
    return RegistrationModel.withError(errorMsg);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['token'] = this.token;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? name;
  String? email;
  int? phone;
  int? zipcode;
  bool? status;
  int? id;

  Data({this.name, this.email, this.phone, this.zipcode, this.status, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    zipcode = json['zipcode'];
    status = json['status'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['zipcode'] = this.zipcode;
    data['status'] = this.status;
    data['id'] = this.id;
    return data;
  }
}
