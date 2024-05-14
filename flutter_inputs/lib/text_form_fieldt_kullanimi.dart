import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text form field kullanimi'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            // Burada ise sadece kullanıcı etkileşimi alıp hatalı olursa hata gözükür...
            /*
            autovalidateMode: AutovalidateMode.always,
            *** Burada sağlamadığı her durumda hata gözükür. Sayfa açıldığında bile...
            */
            child: Column(
              children: [
                TextFormField(
                  initialValue: 'kavala',
                  // Otomatik değer ataması yapar...
                  decoration: InputDecoration(
                    //errorStyle: TextStyle(color: Colors.amber),
                    // Hata mesajının rengini değiştirir...
                    border: OutlineInputBorder(),
                    //Text form kısmını kutucuk içine alır...
                    labelText: 'Kullanıcı adı giriniz',
                    hintText: 'User Name',
                  ),
                  onSaved: (deger) {
                    _userName = deger!;
                  },
                  // Kullanıcıdan alınan değerlerin kaydedilmesini sağlar...
                  validator: (deger) {
                    if (deger!.length < 4) {
                      return 'Kullanıcı adı en az 4 karakter olmalı...';
                    } else {
                      return null;
                    }
                  },
                  // Validator ile hata mesajı ekrana yazdırılır...
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  initialValue: 'kavala@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  // Klavyede '@' işareti çıkmasını sağlar...
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email giriniz',
                    hintText: 'Email',
                  ),
                  onChanged: (deger) {
                    _email = deger!;
                  },
                  validator: (deger) {
                    if (!EmailValidator.validate(deger!)) {
                      return 'Geçerli bir email giriniz...';
                    } else {
                      return null;
                    }
                    // Email kontrolü yapar. pubdev'den indirilen kütüphane ile yapılır...
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  initialValue: 'Şifre',
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifrenizi giriniz',
                    hintText: 'Password',
                  ),
                  onChanged: (deger) {
                    _password = deger!;
                  },
                  validator: (deger) {
                    if (deger!.length < 6) {
                      return 'Şifre en az 6 karakter olmalı...';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    bool _validate = _formKey.currentState!.validate();
                    // Burada kullanıcı girişlerinin uygun olup olmadığını kontrol eder...
                    if (_validate) {
                      _formKey.currentState!.save();
                      //******************************************************************** */
                      String result =
                          'Kullanıcı adı: $_userName\nEmail: $_email\nŞifre: $_password';

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(result),
                        ),
                      );
                      //******************************************************************** */
                      // Burada ekrana yazılan giriş bilgileri bilgilendirme olarak yazdırılır...
                    }
                    // Burada kullanıcı girişlerini kaydeder...

                    _formKey.currentState!.reset();
                    // Eğer veriler doğru girilip 'ONAYLA' basılırsa kutular temizlenir...
                  },
                  child: Text('ONAYLA'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
