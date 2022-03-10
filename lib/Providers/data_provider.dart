import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashBoardProvider with ChangeNotifier {
  String? data;
  SharedPreferences? sharedPreferences;
  int counts = 0;

  void setCountIncrement() {
    counts++;
    notifyListeners();
  }
  void getSharedpref() async {
    await SharedPreferences.getInstance().then((value) {
      sharedPreferences = value;
      getData();
    });
  }
  void setData() async {
    await sharedPreferences?.setString("name", "Reyad Ahammed");
  }

  void getData() {
    data = sharedPreferences?.getString("name");
  }

}
