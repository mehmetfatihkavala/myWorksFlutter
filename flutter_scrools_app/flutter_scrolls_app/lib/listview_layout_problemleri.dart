import 'package:flutter/material.dart';

class ListviewLayoutProblemleri extends StatelessWidget {
  const ListviewLayoutProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Layout Problems...'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Başladı...'),
            Expanded(
              child: ListView(
                //shrinkWrap: true,
                //Listview'in sadece çocukları kadar alanı kaplamasına yarar...
                //scrollDirection: Axis.horizontal,
                //Listview'in dikey değilde yatay çalışmasını sağlar...
                children: [
                  Container(
                    height: 400,
                    color: Colors.red.shade300,
                  ),
                  Container(
                    height: 400,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    height: 400,
                    color: Colors.amber.shade300,
                  ),
                  Container(
                    height: 400,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    height: 400,
                    color: Colors.amber.shade300,
                  ),
                  Container(
                    height: 400,
                    color: Colors.blue.shade300,
                  )
                ],
              ),
            ),
            Text('Bitti...'),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
      ),
    );
  }
}
