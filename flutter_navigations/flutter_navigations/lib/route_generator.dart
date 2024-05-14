import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/main.dart';
import 'package:flutter_navigations/ogrenci_detay.dart';
import 'package:flutter_navigations/ogrenci_listesi.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/purple_page.dart';
import 'package:flutter_navigations/red_page.dart';
import 'package:flutter_navigations/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _rotaOlustur(
      Widget gidilecekYer, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekYer,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => gidilecekYer,
      );
    } else {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekYer,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _rotaOlustur(AnaSayfa(), settings);

      case '/redPage':
        return _rotaOlustur(RedPage(), settings);

      case '/yellowPage':
        return _rotaOlustur(YellowPage(), settings);

      case '/greenPage':
        return _rotaOlustur(GreenPage(), settings);

      case '/purplePage':
        return _rotaOlustur(PurplePage(), settings);

      case '/orangePage':
        return _rotaOlustur(OrangePage(), settings);

      case '/ogrenciListesi':
        return _rotaOlustur(OgrenciListesi(), settings);

      case '/ogrenciDetay':
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        return _rotaOlustur(
            OgrenciDetay(secilenOgrenci: parametredekiOgrenci), settings);

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('404'),
            ),
            body: Center(
              child: Text(
                'SAYFA BULUNAMADI',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        );
    }
  }
}
