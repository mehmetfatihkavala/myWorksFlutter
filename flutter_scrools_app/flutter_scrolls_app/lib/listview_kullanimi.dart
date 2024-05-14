/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

// ignore: must_be_immutable
class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(index + 1, 'Ogrenci adı ${index + 1}',
          'Ogrenci soyadı ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ogrenci Listesi'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          var oAnkiOgr = tumOgrenciler[index];
          return Card(
            color:
                index % 2 == 0 ? Colors.amber.shade400 : Colors.purple.shade400,
            child: ListTile(
              onTap: () {
                if (index % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red;
                } else {
                  EasyLoading.instance.backgroundColor = Colors.blue;
                }
                EasyLoading.showToast('Eleman tıklandı...',
                    duration: Duration(
                      seconds: 3,
                    ),
                    dismissOnTap: true,
                    toastPosition: EasyLoadingToastPosition.bottom);
              },
              onLongPress: () {
                _alertDialogIslemleri(context, oAnkiOgr);
              },
              title: Text(oAnkiOgr.isim),
              subtitle: Text(oAnkiOgr.soyisim),
              leading: CircleAvatar(child: Text(oAnkiOgr.id.toString())),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
      ),
      //klasikListView() diyerek method çağrılır...
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(child: Text(ogr.id.toString())),
              ))
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    //showCupertinoDialog(context: context, builder: builder)
    //IOS için kullanılır...
    showDialog(
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            content: SingleChildScrollView(
              child: Text('MFK\n' * 200),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('KAPAT'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('TAMAM'),
              )
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    return ("İsim: $isim Soyad: $soyisim id: $id");
  }
}*/
