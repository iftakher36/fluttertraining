import 'package:flutter/cupertino.dart';
import 'package:second/data_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late UserData data;
  late String name;

  @override
  Widget build(BuildContext context) {
     data= ModalRoute.of(context)?.settings.arguments as UserData;

    return Container(
      child: Column(
        children:  [
           Text(
              data.name
          ),
          Text(
              data.email
          ),
          GestureDetector(
            onTap: ()=> Navigator.of(context).pushNamed("profile"),
            child:  Text(
                data.pass
            ),
          )
        ],
      )

    );
  }
}
