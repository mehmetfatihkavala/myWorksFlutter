import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Başlik"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dersleriColumniOlustur()),
            ],
          ),
        ),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.orange.shade200,
          alignment: Alignment.center,
          child: Text(
            'D',
            style: TextStyle(fontSize: 50),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.orange.shade400,
          alignment: Alignment.center,
          child: Text(
            'A',
            style: TextStyle(fontSize: 50),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.orange.shade600,
          alignment: Alignment.center,
          child: Text(
            'R',
            style: TextStyle(fontSize: 50),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.orange.shade800,
          alignment: Alignment.center,
          child: Text(
            'T',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ],
    );
  }

  Column dersleriColumniOlustur() {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade200,
            alignment: Alignment.center,
            child: Text(
              'E',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade300,
            alignment: Alignment.center,
            child: Text(
              'R',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade400,
            alignment: Alignment.center,
            child: Text(
              'S',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade500,
            alignment: Alignment.center,
            child: Text(
              'L',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade600,
            alignment: Alignment.center,
            child: Text(
              'E',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade700,
            alignment: Alignment.center,
            child: Text(
              'R',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade800,
            alignment: Alignment.center,
            child: Text(
              'İ',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ],
    );
  }
}
