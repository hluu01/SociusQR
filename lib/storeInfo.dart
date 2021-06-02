import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';


// ignore: camel_case_types
class storeInfo extends StatefulWidget {
  @override
  _storeInfoState createState() => _storeInfoState();
}

// ignore: camel_case_types
class _storeInfoState extends State<storeInfo> {
  final controllerData = TextEditingController();

  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store social medias"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: controllerData,
            decoration: InputDecoration(hintText: 'Enter social media links'),
          ),
          ElevatedButton(
            child: Text("Save"),
            onPressed: () {
              saveData(controllerData.text);
            },
          )
        ],
      ),
    );
  }

  void saveData(String value) async {

    // ignore: invalid_use_of_visible_for_testing_member
    SharedPreferences.setMockInitialValues({});

    final prefs = await SharedPreferences.getInstance();
    prefs.setString('Key', value);

    Fluttertoast.showToast(msg: 'Saved data :)', toastLength: Toast.LENGTH_SHORT);

  }
}


