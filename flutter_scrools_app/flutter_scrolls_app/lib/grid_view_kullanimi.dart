import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView deneme...'),
      ),
      body: Center(
          //GradView ekranın kaymasını sağlar...
          child: GridView.builder(
              itemCount: 100,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.greenAccent,
                            width: 5,
                            style: BorderStyle.solid),
                        //borderRadius: BorderRadius.all(Radius.circular(50)),
                        //Kenarları ovallaştırır...
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(10.0, 20.0),
                            blurRadius: 20.0,
                          )
                        ],
                        /********************************** */
                        shape: BoxShape.circle,
                        //Kenarları yuvarlaklaştırır...
                        //borderRadius ile beraber kullanılmaz, hata verir...
                        /********************************** */
                        color: Colors.teal[100 * ((index + 1) % 8)],
                        gradient: LinearGradient(
                            colors: [Colors.teal, Colors.blue],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        image: DecorationImage(
                          image: AssetImage("assets/images/indir.jpeg"),
                          fit: BoxFit.contain,
                          //Resmi normal boyutta kullanır...
                          /*********************************** */
                          //alignment: Alignment.topCenter,
                          //Resmi yukarı taşır...
                          /*********************************** */
                        )),
                    margin: EdgeInsets.all(20),
                    //Verilerin büyüklüğünü ayarlar...
                    child: Text('Merhaba Flutter\n $index',
                        style: TextStyle(fontSize: 21),
                        textAlign: TextAlign.center),
                  ),

                  //GestureDetector Tıklama işlemleri için kullanılır...
                  //Bu widget sayesinde tıklama methodları kullanılır hale gelir...
                  onTap: () =>
                      debugPrint("Merhaba Flutter $index'e tıklandı..."),
                  onDoubleTap: () =>
                      debugPrint("Merhaba Flutter $index'e çift tıklandı..."),
                  onLongPress: () =>
                      debugPrint("Merhaba Flutter $index'e uzun basıldı..."),
                );
              })),
    );
  }
}

// (crossAxisCount: 3,
//   //Bir satırda olması gereken nesne sayısını belirler...
//   primary: false,
//   reverse: true,
//   //Elemanları sondan ilke doğru sıralar...
//   /************************************************ */
//   //scrollDirection: Axis.horizontal,
//   //scrollDirection: Axis.horizontal ile nesneler yukarıdan aşağı değil sağdan sola kayar...
//   //Bunu yazınca artık satırda değil sütunda 3 nesne olur...
//   /********************************************************* */
//   padding: EdgeInsets.all(10),
//   crossAxisSpacing: 20,
//   //Sütunlar arasındaki boşluğu ayarlar...
//   mainAxisSpacing: 40,
//   //Satırlar arasındaki boşluğu ayarlar...
// children: [
//   Container(
//   //Genişlik yükseklik değeri vermeye gerek yok gridview bunu otomatik ayarlar...
//   alignment: Alignment.center,
//   //Kutu içindeki nesneleri kutunun ortasına koyar...
//   color: Colors.teal.shade300,
//   child: Text(
//     'Merhaba Flutter İlk...',
//     style: TextStyle(fontSize: 40),
//     textAlign: TextAlign.center,
//   ),
// ),
// Container(
//   alignment: Alignment.center,
//   color: Colors.teal.shade300,
//    child: Text(
//     'Merhaba Flutter...',
//      style: TextStyle(fontSize: 40),
//     textAlign: TextAlign.center,
//   ),
// ),
// Container(
//   alignment: Alignment.center,
//   color: Colors.teal.shade300,
//    child: Text(
//     'Merhaba Flutter...',
//      style: TextStyle(fontSize: 40),
//     textAlign: TextAlign.center,
//   ),
// ),
// Container(
//   alignment: Alignment.center,
//   color: Colors.teal.shade300,
//    child: Text(
//     'Merhaba Flutter...',
//      style: TextStyle(fontSize: 40),
//     textAlign: TextAlign.center,
//   ),
// ),
// //****Bir satırda 3 adet olmasını istediğimiz için dördüncü container aşağı satıra kaydı...
// Container(
//   alignment: Alignment.center,
//   color: Colors.teal.shade300,
//   child: Text(
//   'Merhaba Flutter Son ...',
//   style: TextStyle(fontSize: 40),
//   textAlign: TextAlign.center,
//   ),
//   ),
// ],
