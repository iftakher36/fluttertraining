import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:second/model/list.dart';

import '../model/login.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  var dio = Dio();
  String username = "si06@gtrbd.net", pass = "12345678";
  Login? login;
  Attendance? attendance;

  void getLoginData() async {
    try {
      var response = await dio.get(
          'https://www.pqstec.com/invoiceapps/Values/LogIn?UserName=$username&Password=$pass');
      login = Login.prothom(response.data);
      getAttendceList(login!.userId, login!.token);

      print(login?.token);
    } catch (e) {
      print(e);
    }
  }

  void getAttendceList(int empId, String token) async {
    var response = await dio.get(
        "https://www.pqstec.com/invoiceapps/Values/GetEmployeeAttendanceList",
        queryParameters: {
          'EmpId': empId,
          'FromDate': 'Feb 16,2022',
          'ToDate': 'Feb 16,2022',
          'IsLocation': 1
        },
        options: Options(
            headers: {'Accept': '*/*', 'Authorization': 'Bearer $token'}));
    attendance = Attendance.fromJson(response.data);
  }

  void post() async {
    var data = FormData.fromMap(
        {"Email": "hasanrafi1101@gmail.com", "Password": "Abc@123"});

    var response = await dio.post(
        "https://www.gtrbd.net/support/api/EasyHR/Login",
        data: data,
    );
    print(response);
  }
  void get() async {
    var response = await dio.get(
        "https://www.gtrbd.net/support/api/EasyHR/GetUserInfo/20d43fc1-790d-402a-8166-4eaf84599d7d/84d6348e-c61c-49ed-bf45-d6a791b0116f_",
        options: Options(headers: {'Accept': '*/*'}));
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    getLoginData();
    post();
    get();
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: attendance?.attendanceList.length,
            itemBuilder: (_, index) {
              return Card(
                child: ListTile(
                  leading: Text(
                    attendance!.attendanceList[index].inTime,
                    style: const TextStyle(fontSize: 10),
                  ),
                  trailing: Text(attendance!.attendanceList[index].locationName,
                      style: const TextStyle(fontSize: 10)),
                ),
              );
            }),
      ),
    );
  }
}
