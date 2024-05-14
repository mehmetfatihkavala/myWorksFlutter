import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String img1 = "https://images.app.goo.gl/NRxCnf26n8PX95pi9";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
      ),
      home: Scaffold(
        // backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Başlık'),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: flexibleListe,
          ),
        ),
        /********************************************************* */
        //Ders2...
        /*Container(
          color: Colors.cyan,
          child: Center(
            heightFactor: 2,
            widthFactor: 2,
            //heigh(width)Factor İçindeki çocuğun verilen değer katı kadar alan kaplar...
            child: Container(
              width: 100,
              height: 100,
              child: Text('KAVALA'),
              color: Colors.red,
            ),
          ),
        ),*/
        //********************************************************* */
        //Ders 1..
        /*Container(
          // alignment: Alignment.center,
          width: 500,
          height: 800,
          color: Colors.purple,
          child: Text('Mehmet' * 2, textAlign: TextAlign.center),
          //constraints: BoxConstraints(minHeight: 500, minWidth: 500),
          // margin: EdgeInsets.all(100), **Tüm yerlerden boşluk bırakır...
          //margin: EdgeInsets.only(left: 100, top: 500),
          //Üstten ve soldan verilen değer kadar boşluk bırakır...
          margin: EdgeInsets.fromLTRB(300, 200, 25, 50),
          padding: EdgeInsets.all(100),
        ),*/
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.account_balance,
            color: Colors.black,
          ),
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }

  List<Widget> get sorunluListe {
    return [
      Container(
        height: 75,
        width: 75,
        color: Colors.amber,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.green,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.cyan,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.orange,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.orange,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.cyan,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.green,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.green,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.green,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.green,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.green,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.green,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.black,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.amberAccent,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.yellow,
      ),
    ];
  }

  List<Widget> get expandedListe {
    return [
      Expanded(
        flex: 2,
        //flex:2, diğerlerine göre iki kat yer kaplamasını sağlar...
        child: Container(
          height: 75,
          width: 75,
          color: Colors.amber,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.green,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.cyan,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.pink,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.cyan,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.redAccent,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.green,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.grey,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.deepOrange,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.deepPurple,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.black,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.teal,
        ),
      ),
      Expanded(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.yellow,
        ),
      ),
    ];
  }

  List<Widget> get flexibleListe {
    //Burada verilen sınırlar içerisinde büyüyüp küçülür boşluk kalabilir sınırlar ölçüsünde...
    return [
      Flexible(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.amber,
        ),
      ),
      Flexible(
        child: Container(
          height: 75,
          width: 75,
          color: Colors.green,
        ),
      ),
    ];
  }

  Container dersDort() {
    return Container(
      color: Colors.cyan.shade200,
      child: Column(
        //Row x ekseni içindir. Y ekseni için Column kullanılır...
        mainAxisSize: MainAxisSize.max,
        //mainAxisSize ne kadar yer kaplayacağını ayarlar....
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //Bunda ise elemanları istenilene göre yerleştirir...
        crossAxisAlignment: CrossAxisAlignment.start,
        //Bunda da karşıt eksenler için kullanılır...
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("K"),
              Text("A"),
              Text("V"),
              Text("A"),
              Text("L"),
              Text("A"),
            ],
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.green,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.red,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.grey,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }

  //Ders3...
  Widget containerDersleri() {
    return Center(
      child: Container(
        //color: Colors.red,
        //Decoration ve üst sınıfta aynı anda renk verilemez...
        /*child: FlutterLogo(
            size: 300,
            /* style: FlutterLogoStyle.horizontal,
            textColor: Colors.purple,*/
            //Flutterın yanına yazı getirir ve renk ayarı yapar...
          ),*/
        child: Text(
          'bejeke',
          style: TextStyle(fontSize: 300),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 12, color: Colors.black),
            borderRadius: BorderRadius.circular(40),
            /*image: DecorationImage(
              image: NetworkImage(img1),
              fit: BoxFit.cover,
            ),*/
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 25),
                blurRadius: 20,
              ),
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, -25),
                blurRadius: 1,
              ),
            ]),
      ),
    );
  }
}
