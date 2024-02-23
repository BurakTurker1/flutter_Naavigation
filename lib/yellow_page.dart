import 'package:flutter/material.dart';

class yellowPage extends StatelessWidget {
  const yellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yellowPage'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);//ilk sayfaya geri dön anlamına gelir
              },
              child: Text(
                'İlk sayfaya Dön',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.of(context).popUntil((route) => route.settings.name =='/greenPage');//ortadaki elemana dönecek route adı  '/greenPage' olana kadar geri dön anlamına geliyor
              },
              child: Text(
                'Ortadaki Sayfaya geri Dön',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.settings.name =='/');
              },
              child: Text(
                'İlk sayfaya geri dön yol 2',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
            ElevatedButton(
              onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('/greenPage', (route) =>route.isFirst );
                  //ilk sayfaya kadar git sonra oraya yeşil sayfayı ekle (Yeşil sayfayı açıyo yeşilden geriye gitmek istediginde ilk sayfaya atıyo)
              },
              child: Text(
                'yeşil ama  Anasayfadan sonra',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}
