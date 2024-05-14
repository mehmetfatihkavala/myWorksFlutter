import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("Uzun basıldı");
            //Uzun basılınca console'da bildirir...
          },
          child: Text('textButton'),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            //Buton rengini değiştirir...
          ),
          icon: Icon(Icons.add),
          label: Text('Text Button With Icon'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black12,
            //Button rengi değiştirir...
            foregroundColor: Colors.black,
            //Buttondaki yazı rengini değiştirir...
          ),
          child: Text('Elevated Button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Elevated with icon'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('OutlinedButton'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Outlined with Icon'),
        ),
      ],
    );
  }
}
