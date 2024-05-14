import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _kullanilacakSehir = null;
  List<String> sehirler = [
    'Ankara',
    'İstanbul',
    'İzmir',
    'Diyarbakır',
    'Denizli'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('Şehir seçiniz...'),
        icon: Icon(Icons.arrow_downward),
        style: TextStyle(color: Colors.amber),
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        /* items: [
          DropdownMenuItem(
            child: Text('Diyarbakır şehri'),
            value: 'Diyarbakır',
          ),
          DropdownMenuItem(
            child: Text('İzmir şehri'),
            value: 'İzmir',
          ),
          DropdownMenuItem(
            child: Text('Ankara şehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('Denizli şehri'),
            value: 'Denizli',
          ),
        ],*/
        //Tek tek yazmak için böyle yapılır ancak aşağıdaki gibi liste şeklinde daha rahat yapılır...
        items: sehirler
            .map((String oAnkiSehir) => DropdownMenuItem(
                  child: Text(oAnkiSehir),
                  value: oAnkiSehir,
                ))
            .toList(),
        //Liste şeklinde ekleme...
        value: _kullanilacakSehir,
        onChanged: (String? secilenSehir) {
          setState(() {
            _kullanilacakSehir = secilenSehir;
          });
        },
      ),
    );
  }
}
