import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


// ignore: camel_case_types
class generateQR extends StatefulWidget {
  const generateQR({Key? key}) : super(key: key);
  @override
  _generateQRState createState() => _generateQRState();
}

// ignore: camel_case_types
class _generateQRState extends State<generateQR> {

  String value = '';

  getData() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      value = prefs.getString('key') as String;
    });

  }


  @override
  Widget build(BuildContext context) {

    getData();

    return Scaffold(
      appBar: AppBar(
        title: Text("Generate QR code"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, //
        children: [
          SizedBox(
            height: 20,
          ),
          QrImage(
            data: value,
            size: 400,
          ),
        ],
      ),
    );
  }
}
