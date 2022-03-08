import 'dart:convert';

class Attendance {
  Attendance({
    required this.success,
    required this.attendanceList,
  });

  bool success;
  List<AttendanceList> attendanceList;

  factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
        success: json["success"],
        attendanceList: List<AttendanceList>.from(
            json["AttendanceList"].map((x) => AttendanceList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "AttendanceList":
            List<dynamic>.from(attendanceList.map((x) => x.toJson())),
      };
}

class AttendanceList {
  AttendanceList({
    required this.employeeName,
    required this.punchDate,
    required this.inTime,
    required this.outTime,
    required this.locationName,
    required this.status,
    required this.color,
    this.remarks,
  });

  String employeeName;
  String punchDate;
  String inTime;
  String outTime;
  String locationName;
  String status;
  String color;
  dynamic remarks;

  factory AttendanceList.fromJson(Map<String, dynamic> json) => AttendanceList(
        employeeName: json["EmployeeName"],
        punchDate: json["PunchDate"],
        inTime: json["InTime"],
        outTime: json["OutTime"],
        locationName: json["LocationName"],
        status: json["Status"],
        color: json["Color"],
        remarks: json["Remarks"],
      );

  Map<String, dynamic> toJson() => {
        "EmployeeName": employeeName,
        "PunchDate": punchDate,
        "InTime": inTime,
        "OutTime": outTime,
        "LocationName": locationName,
        "Status": status,
        "Color": color,
        "Remarks": remarks,
      };
}
