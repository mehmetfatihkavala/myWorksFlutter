import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _url =
        'https://images.pexels.com/photos/1164778/pexels-photo-1164778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            //Bütün yükseklikleri en yüksek eleman kadar yapar...
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //Elemanın bütün sütunu kaplamasını sağlar...
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade100,
                    child: Image.asset(
                      'assets/images/indir.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade100,
                    child: Image.network(
                      _url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //İnternetten resim çekmek için kullanılır...
                Expanded(
                  child: Container(
                    color: Colors.red.shade100,
                    height: 500,
                    width: 350,
                    child: CircleAvatar(
                      child: Text(
                        'MFK',
                        style: TextStyle(fontSize: 150),
                      ),
                      foregroundColor: Colors.black87,
                      backgroundColor: Colors.amber,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 500,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                //Elemanın bütün satırı kaplamısını sağlar...
                placeholder: 'assets/images/loading.jpg',
                //placeholder kısmı foto yüklenene kadar gösterilecek şeyi verir...
                image: _url),
          ),
          Expanded(child: Placeholder()),
          //Burada geri kalan kısım bir çarpı halinde gözükür...
        ],
      ),
    );
  }
}
