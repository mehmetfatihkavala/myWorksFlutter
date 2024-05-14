import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/dropdown_button_kullanimi.dart';
//import 'package:flutter_temel_widgets/image_widgets.dart';
import 'package:flutter_temel_widgets/temel_buton_turleri.dart';
//import 'package:flutter_temel_widgets/my_counter_page.dart';

void main() {
  debugPrint("Main methodu calisti...");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("myAppBuild calisti...");
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: TextTheme(
              displayLarge: TextStyle(
            color: Colors.green.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 80,
          ))),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Temel Butonlar"),
        ),
        body: DropDownButtonKullanimi(),
      ),
    );
  }
}
