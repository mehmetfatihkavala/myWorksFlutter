import 'package:flutter/material.dart';

class GlobalKeyKullanimi extends StatelessWidget {
  GlobalKeyKullanimi({super.key});
  final sayacWidgetKey = GlobalKey<_SayacWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Global Key Kullanimi'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Butona tıklayınız'),
              SayacWidget(
                key: sayacWidgetKey,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            sayacWidgetKey.currentState!._arttir();
          },
          child: Icon(Icons.add_circle_outline),
        ));
  }
}

class SayacWidget extends StatefulWidget {
  const SayacWidget({super.key});

  @override
  State<SayacWidget> createState() => _SayacWidgetState();
}

class _SayacWidgetState extends State<SayacWidget> {
  int _sayac = 0;
  void _arttir() {
    setState(() {
      _sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _sayac.toString(),
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
