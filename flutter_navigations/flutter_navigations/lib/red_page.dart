import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('onWillPop Çalıştı...');
        return Future.value(true);
      }, //WillPopScope uygulamada geri düğmesinin çalışmaması için kullanılır(falseken...)...
      child: Scaffold(
        appBar: AppBar(
          title: Text('Red Page'),
          backgroundColor: Colors.red,
          automaticallyImplyLeading: true,
          //Otomatik olarak yukarı geri tuş atama yapmasını ayarlar.
          //Default olarak true'dur(Yani o tuş vardır)...
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Page',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {
                  _rastgeleSayi = Random().nextInt(100);
                  print('Üreitilen sayi: $_rastgeleSayi...');
                  Navigator.of(context).pop(_rastgeleSayi);
                  //Önceki sayfaya dönmeye yarar...
                },
                child: Text('Geri Dön...'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade600),
                onPressed: () {
                  Navigator.of(context).maybePop();
                },
                child: const Text('Maybe pop kullanimi...'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade600),
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    print('Evet olabilir...');
                  } else {
                    print('Hayir olamaz...');
                  }
                },
                child: const Text('Canpop kullanimi...'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade600),
                onPressed: () {
                  Navigator.pushNamed(context, '/orangePage');
                },
                child: const Text('Go to orange page...'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
