import 'dart:convert';

class Login {
  Login({
    required this.userName,
    required this.token,
    required this.userId,
    required this.comId,
    required this.email,
    required this.companyName,
    required this.roleName,
    required this.weightScaleBarcodeStartWith,
    required this.empImagePath,
  });

  String userName;
  String token;
  int userId;
  int comId;
  String email;
  String companyName;
  String roleName;
  String weightScaleBarcodeStartWith;
  String empImagePath;

  factory Login.prothom(Map<String, dynamic> json) => Login(
        userName: json["UserName"],
        token: json["Token"],
        userId: json["UserId"],
        comId: json["ComId"],
        email: json["Email"],
        companyName: json["CompanyName"],
        roleName: json["RoleName"],
        weightScaleBarcodeStartWith: json["WeightScaleBarcodeStartWith"],
        empImagePath: json["EmpImagePath"],
      );

  Map<String, dynamic> toJson() => {
        "UserName": userName,
        "Token": token,
        "UserId": userId,
        "ComId": comId,
        "Email": email,
        "CompanyName": companyName,
        "RoleName": roleName,
        "WeightScaleBarcodeStartWith": weightScaleBarcodeStartWith,
        "EmpImagePath": empImagePath,
      };
}
