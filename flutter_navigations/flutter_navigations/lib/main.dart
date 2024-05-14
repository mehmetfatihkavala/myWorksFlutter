import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/green_page.dart';
//import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/red_page.dart';
import 'package:flutter_navigations/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
/*       routes: {
        '/redPage': (context) => RedPage(),
        '/': (context) => AnaSayfa(),
        //Kök dizini routesten belirlersen home kullanmaman gerekir yoksa hata alırsın...
        '/orangePage': (context) => OrangePage(),
      },
      //Eğer verilen rotada bir sayfa olmaması için yapılan:
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('EROR'),
          ),
          body: Center(
            child: Text(
              '404',
              style: TextStyle(fontSize: 500),
            ),
          ),
        ),
      ), */
      /************************************************************ */

      //onGenerateRoute routes ve onUnknownRoute arasında da kullanılabilir.Tek başına da kullanılabilir...
      //Tercih edilen budur...
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade300),
              onPressed: () async {
                int? _gelecekSayi = await Navigator.push<int>(context,
                    CupertinoPageRoute(builder: (context) => RedPage()));
                //IOS stili kullanım...
                print('Ana sayfadaki sayı: $_gelecekSayi');
              },
              child: const Text('Kırmızı Sayfaya Gir IOS'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              onPressed: () {
                //Navigator.push(context, route);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => RedPage()))
                    .then(
                      (value) => debugPrint('Gelen sayi:$value...'),
                    );
                //Android stili kullanım...
              },
              child: const Text('Kırmızı Sayfaya Gir ANDROID'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: const Text('Maybe pop kullanimi...'),
              //Geri de sayfa varsa bu geri dönmeye yarar...
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
              //Geride sayfa olup olmadığını kontrol eder...
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => GreenPage(),
                  ),
                );
              },
              child: const Text('pushReplacement kullanimi...'),
              //Bununla birlikte anasayfa artık pushlanan sayfa olur.
              //Geri gelinince direkt uygulamadan çıkar...
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              onPressed: () {
                Navigator.pushNamed(context, '/redPage');
              },
              child: const Text('Kırmızı sayfa...'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade600),
              onPressed: () {
                Navigator.pushNamed(context, '/yellowPage');
              },
              child: const Text('Sarı sayfa...'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600),
              onPressed: () {
                Navigator.pushNamed(context, '/greenPage');
              },
              child: const Text('Yeşil sayfa...'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade600),
              onPressed: () {
                Navigator.pushNamed(context, '/purplePage');
              },
              child: const Text('Mor sayfa...'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade600),
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage');
              },
              child: const Text('Turuncu sayfa...'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade600),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/ogrenciListesi', arguments: 60);
              },
              child: const Text('Liste Olustur'),
            ),
          ],
        ),
      ),
    );
  }
}
