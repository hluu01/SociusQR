import 'package:flutter/material.dart';
import 'package:qrcode/generateQR.dart';
import 'scanner.dart';
import 'storeInfo.dart';
import 'generateQR.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SociusQR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SociusQR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: Text('Scan',),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Scanner()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(20.0, 10.0),
              ),
            ),
            ElevatedButton(
              child: Text("Generate QR Code"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => generateQR()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Store social medias"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => storeInfo()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
