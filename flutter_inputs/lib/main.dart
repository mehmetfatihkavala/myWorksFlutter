import 'package:flutter/material.dart';
import 'package:flutter_inputs/global_key_kullanimi.dart';
import 'package:flutter_inputs/text_form_fieldt_kullanimi.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GlobalKeyKullanimi(),
    );
  }
}

class TextFieldIslemleri extends StatefulWidget {
  final String title;
  const TextFieldIslemleri({super.key, required this.title});

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController =
        TextEditingController(text: 'varsayilanmailatama@varsayilan.com');
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
  //Yaratılan nesnenin daha sonrasında silinmesini sağlar...
  //Bellek sağlığı için yapılması gereklidir...

  //initState nesnenin bir kere oluşturulup devamlı kullanılmasını sağlar.
  //Eğer build'de tanımlansaydı nesne defalarca kez oluşturulacaktı...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.number,
              //Klavye girişini kısıtlar. TextInputType.number ile sadece rakam klavyesi açılır...
              textInputAction: TextInputAction.next,
              //Geçiş butonunu değiştirmeye yarar...
              autofocus: true,
              //Birden fazla kutucuk varsa uygulama açıldığı gibi bu kutucuktan başlatmaya yarar...
              maxLines: 5,
              //5 satırlık yer verir...
              maxLength: 20,
              //Maksimum girilecek karakter sayısını belirler...
              onChanged: (String deger) {
                if (deger.length > 3) {
                  print(deger);
                }
              },
              //Girilen değerleri konsolda yazar...
              cursorColor: Colors.green,
              //Harf imlecinin rengini ayarlar...
              decoration: InputDecoration(
                labelText: "label text",
                //Kutucuğun üstüne text girer...
                hintText: "Numaranızı Giriniz",
                //Kutucuğa basınca girilmesi geren şeyi söyler...
                icon: Icon(Icons.add),
                //Text kısmının başına ikon getirir...
                prefixIcon: Icon(Icons.email),
                //Kutunun içine ikon koymaya yarar...
                suffixIcon: Icon(Icons.access_alarm_outlined),
                //Kutunun sonuna ikon koymaya yarar...
                filled: true,
                fillColor: Colors.amber.shade100,
                //Kutunun içine renk ataması yapmaya yarar...
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(500.0),
                  //Kenarları ovallaştırır...
                ),
                //Kutuyu border içine almaya yarar...
              ),
              onSubmitted: (String deger) {
                print("submit" + deger);
              },
              //Girilen değeri ileri tuşuna bastıktan sonra konsola yazar...
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _emailController.text = 'BUTONA BASINCA DEGISTIR...';
          });
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
