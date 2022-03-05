import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart' as rafi;
import 'package:second/data_model.dart';
import 'package:second/grid_layout.dart';

import '../listview_layout.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  rafi.LocationData? currentLoc;
  String? address;
  String change = "Hello Programmers";
  int counter = 0;
  double size = 0.0;
  double values = 8.0;
  List name = [
    "Farhan",
    "Shahinur",
    "Rafi",
    "Hakim",
    "Riyad",
    "Riyad",
    "Riyad",
    "Riyad",
    "Riyad",
    "Riyad",
    "Riyad"
  ];

  Future<String> _getAddress(double? lat, double? lang) async {
    if (lat == null || lang == null) return "";

    List<Placemark> placemarks =
        await placemarkFromCoordinates(lat, lang, localeIdentifier: "en");

    print(placemarks.length);
    Placemark placeMark = placemarks[1];
    return "${placeMark.street}, ${placeMark.subLocality}, ${placeMark.locality},${placeMark.country}";
  }

  void _getLocation() {
    getLocationData().then((value) => setState(() {
          currentLoc = value;
          _getAddress(currentLoc?.latitude, currentLoc?.longitude)
              .then((value) => address = value);
        }));
  }

  Future<rafi.LocationData?> getLocationData() async {
    rafi.Location location = rafi.Location();

    bool _serviceEnabled;
    rafi.PermissionStatus _permissionGranted;
    rafi.LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == rafi.PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != rafi.PermissionStatus.granted) {
        return null;
      }
    }

    _locationData = await location.getLocation();

    return _locationData;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size.width;

    return Scaffold(
        drawer: size < 768
            ? const SafeArea(
                child: Drawer(
                  child: SignUp(),
                ),
              )
            : null,
        appBar: AppBar(
          title: Text(change),
          leading: size > 768
              ? null
              : Builder(builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      if (!Scaffold.of(context).isDrawerOpen) {
                        Scaffold.of(context).openDrawer();
                      }
                    },
                  );
                }),
          actions: [
            IconButton(
              icon: const Icon(Icons.access_alarm_sharp),
              onPressed: () {
                counter++;
                values++;
                change = "hello" + counter.toString();
                setState(() {});
              },
            ),
          ],
        ),
        body: Row(
          children: [
            size > 768
                ? const Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SignUp(),
                    ),
                  )
                : Container(),
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Card(
                        color: Colors.white,
                        child: SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const CircleAvatar(
                                radius: 31,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        "https://www.vhv.rs/dpng/d/426-4263064_circle-avatar-png-picture-circle-avatar-image-png.png",
                                        scale: 1)),
                              ),
                              SizedBox(width: 80,
                                  child: Text(address!,style: const TextStyle(fontSize: 10),))
                            ],
                          ),
                        ),
                      ),
                      const Flexible(child: ListViewLayout())
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.orangeAccent,
                  child: const GridLayout(),
                )),
          ],
        ));
  }

  @override
  void initState() {
    _getLocation();
    super.initState();
  }
}

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CircleAvatar(
                    radius: 51,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://www.vhv.rs/dpng/d/426-4263064_circle-avatar-png-picture-circle-avatar-image-png.png",
                            scale: 1)),
                  ),
                  const TextField(
                    style: TextStyle(color: Colors.blue),
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      labelText: "UserName",
                      focusColor: Colors.black,
                      labelStyle: TextStyle(
                        color: Color(0xFF0f0f0f),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      prefixIcon: Icon(Icons.supervised_user_circle,
                          color: Color(0xC3000000)),
                    ),
                  ),
                  const TextField(
                      style: TextStyle(color: Colors.blue),
                      cursorColor: Colors.blue,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        focusColor: Colors.black,
                        labelStyle: TextStyle(
                          color: Color(0xFF0f0f0f),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        prefixIcon: Icon(Icons.lock, color: Color(0xC3000000)),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          )),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF000000)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed("details",
                              arguments: UserData("Farhan rafi", "*******",
                                  "farhan@gmail.com"));
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
