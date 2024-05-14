import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(
            'Sliver App Bar',
            style: TextStyle(fontSize: 50),
          ),
          backgroundColor: Colors.green.shade600,
          expandedHeight: 500,
          floating: true,
          //En aşağıdan yukarı çıkarken appBar en yukarı gelmeden görünür true iken...
          snap: true,
          //floating ile beraber true olunca yukarı çıkınca appBar direkt ortaya çıkar...
          //snap true iken floating false olmamalı hata verir
          pinned: true,
          //Kaydırırken appBar'ın kalıcı olarak yukarıda görünür true'ken...
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Sliver AppBar'),
            centerTitle: true,
            background: Image.asset(
              'assets/images/indir.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        //Blokların kenarlar arasında boşluk bırakmasını sağlar...
        SliverPadding(
          padding: EdgeInsets.all(21),
          sliver: SliverList(
              delegate: SliverChildListDelegate(sabitListeElemanlari)),
        ),

        //Statik Grid listesi oluşturma...
        SliverGrid(
          delegate: SliverChildListDelegate(sabitListeElemanlari),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),

        //Dinamik Grid listesi oluşturması...
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),

        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 500),
        ),

        //Sabit(el ile tek tek yazarak) liste oluşturma...
        SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6)),
        //Dinamik(otomatik) liste oluşturma...
        //SliverGrid(delegate: delegate, gridDelegate: gridDelegate),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari),
            itemExtent: 500),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
            itemExtent: 250),
        //SliverFixedExtenList'te listelerin kaplayacağı eleman belirlenir itemExtent ile...
      ],
    );
  }

  List<Widget> get sabitListeElemanlari {
    return [
      Container(
        height: 300,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          'Sabit Blok 1',
          style: TextStyle(fontSize: 50, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.yellowAccent,
        alignment: Alignment.center,
        child: Text(
          'Sabit Blok 2',
          style: TextStyle(fontSize: 50, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          'Sabit Blok 3',
          style: TextStyle(fontSize: 50, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          'Sabit Blok 4',
          style: TextStyle(fontSize: 50, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 1000,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text(
          'Sabit Blok 5',
          style: TextStyle(fontSize: 50, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          'Sabit Blok 6',
          style: TextStyle(fontSize: 50, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 300,
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        'Dinamik Blok ${index + 7}',
        style: TextStyle(fontSize: 50, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
