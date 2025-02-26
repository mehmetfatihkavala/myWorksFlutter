import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> tumOgrenciler = List.generate(
        elemanSayisi,
        (index) =>
            Ogrenci(index + 1, 'Isim: ${index + 1}', 'Soyisim: ${index + 1}'));
    print('Eleman sayisi alindi $elemanSayisi');
    return Scaffold(
      appBar: AppBar(
        title: Text('Ogrenci Listesi'),
      ),
      body: ListView.builder(
        itemBuilder: (contex, index) {
          return ListTile(
            onTap: () {
              var secilen = tumOgrenciler[index];
              Navigator.pushNamed(context, '/ogrenciDetay', arguments: secilen);
            },
            leading: CircleAvatar(
              child: Text(tumOgrenciler[index].id.toString()),
            ),
            title: Text(tumOgrenciler[index].isim),
            subtitle: Text(tumOgrenciler[index].soyisim),
          );
        },
        itemCount: elemanSayisi,
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
