import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: ()=> Navigator.popUntil(context, ModalRoute.withName("dash")),
        child: const Text(
          "Profile"
        ),
      ),
    );
  }
}
