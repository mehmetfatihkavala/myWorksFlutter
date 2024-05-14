import 'package:flutter/material.dart';

class MyCounterWidget extends StatefulWidget {
  const MyCounterWidget({super.key});

  @override
  State<MyCounterWidget> createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  int _sayac = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint("myHomePage build calisti...");
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter AppBar"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Butona basilma miktari...",
            style: TextStyle(fontSize: 50),
          ),
          Text(
            _sayac.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Buton tiklandi ve sayac degeri $_sayac...");
          sayacArtir();
        },
        child: Icon(
          Icons.add_home_work_outlined,
        ),
      ),
    );
  }

  void sayacArtir() {
    setState(() {
      _sayac++;
    });
  }
}
