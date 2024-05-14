import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_http/model/araba_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({super.key});

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Json Islemleri...'),
      ),
      body: FutureBuilder<List<Araba>>(
        future: arabalarJsonOku(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            List<Araba> arabaListesi = snapshot.data!;
            return ListView.builder(
                itemCount: arabaListesi.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(arabaListesi[index].marka),
                    subtitle: Text(arabaListesi[index].ulke),
                    leading: CircleAvatar(
                      child: Text(
                          arabaListesi[index].modeller[index].fiyat.toString()),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }

  Future<List<Araba>> arabalarJsonOku() async {
    try {
      String okunanString = await DefaultAssetBundle.of(context)
          .loadString('assets/data/arabalar.json');
      var jsonObject = jsonDecode(okunanString);
      //debugPrint(okunanString);
      //debugPrint('*********************************');

      List<Araba> tumArabalar = (jsonObject as List)
          .map((arabaMap) => Araba.fromJson(arabaMap))
          .toList();
      debugPrint(tumArabalar[0].marka);
      debugPrint(tumArabalar.length.toString());

      //debugPrint(tumArabalar.length.toString());

      /**List arabaListesi = jsonObject;
    debugPrint(arabaListesi[1].toString()); 
    **/
      return tumArabalar;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e.toString());
    }
  }
}
