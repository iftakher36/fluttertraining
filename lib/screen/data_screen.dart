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

  @override
  Widget build(BuildContext context) {
    getLoginData();
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: attendance?.attendanceList.length,
            itemBuilder: (_, index) {
              return  Card(
                child: ListTile(
                  leading: Text(attendance!.attendanceList[index].inTime,style: const TextStyle(fontSize: 10),),
                  trailing: Text(attendance!.attendanceList[index].locationName,style: const TextStyle(fontSize: 10)),
                ),
              );
            }),
      ),
    );
  }
}
