import 'package:flutter/material.dart';
import 'package:second/app_theme.dart';
import 'package:second/screen/dashboard_screen.dart';
import 'package:second/screen/details.dart';
import 'package:second/screen/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: "dash",
      routes:  {
        "dash": (ctx)=> const DashBoardScreen(),
        "profile": (ctx)=> const Profile(),
        "details": (shahin)=> const  DetailsScreen(),
        "login": (ctx)=> const SignUp(),
      },
    );
  }
}

