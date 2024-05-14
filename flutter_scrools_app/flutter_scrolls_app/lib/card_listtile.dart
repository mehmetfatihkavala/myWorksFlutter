import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card ve list tile kullanimi...'),
        ),
        body: Center(
          //ListView ve SingleChild tarzı şeyler bellek dostu değildir, çok tercih edilmez...
          child: ListView(
              reverse: true,
              //Elemanları ters sırayla yazar...
              children: [
                Column(
                  children: [
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    tekListeElemani(),
                    //Birden fazla card oluşturmak için ayrı method halinde yazılabilir...
                  ],
                ),
                Text('Merhaba'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Buton'),
                )
              ]),
        ));
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView(
      //SingleChildScroollView taşmayı engeller ve aşağı yukarı inmeyi sağlar...
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          //Birden fazla card oluşturmak için ayrı method halinde yazılabilir...
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
            color: Colors.blue.withOpacity(0.3),
            shadowColor: Colors.greenAccent,
            elevation: 12,
            //ShadowColor elevation gölgelendirme için kullanılır...
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            //Shape butonu ovalleştirmeye yarar...
            child: ListTile(
              //leading: Icon(Icons.add),
              //Başa ikon eklemeye yarar...
              leading: CircleAvatar(child: Icon(Icons.add)),
              //Başa ikon veya profil fotoğrafı tarzı şeyler eklmeye yarar...
              title: Text('Başlık'),
              subtitle: Text('Alt Başlık'),
              trailing: Icon(Icons.account_tree_outlined),
              //Sağ tarafa ikon ekler...
              minVerticalPadding: 50,
              //Kutu büyüklüğünü ayarlar...
            )),
        Divider(
          //Bölücü demek...
          color: Colors.red,
          thickness: 1,
          //Cardın altına çizgi çeker...
          height: 5,
          //Çizgi ile card arasındaki boşluğu ayarlar...
          indent: 5,
          //Çizginin sol taraf ile boşluğunu ayarlar...
          endIndent: 5,
          //Çizginin sağ taraf ile boşluğunu ayarlar...
        )
      ],
    );
  }
}
