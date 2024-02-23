import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/green_page.dart';
import 'package:flutter_navigation/red_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigasyon işlemleri'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  //İkiside Aynı
                  //Navigator.push(context, route);
                  int? gelenSayi = await Navigator.of(context).push<int>(
                      MaterialPageRoute(builder: (RedContext) => RedPage()));
                  debugPrint('AnaSayfa GelenSayi: $gelenSayi');
                },
                child: Text('Kirmizi Sayfaya git Android'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300)),
            ElevatedButton(
                onPressed: () async {
                  int? gelenSayi = await Navigator.push<int>(context,
                          CupertinoPageRoute(builder: (RedContex) => RedPage()))
                      .then((int? value) {
                    debugPrint('AnaSayfa GelenSayi Ios: $value');
                  });
                },
                child: Text('Kirmizi Sayfaya git IOS'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300)),
            ElevatedButton(
                onPressed: () async {
                  if (Navigator.canPop(context)) {
                    debugPrint('evet pop olabilir');
                  } else {
                    debugPrint('Hayir pop olamaz');
                  }
                },
                child: Text('Maybe Pop Kullanimi'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300)),
            ElevatedButton(
                onPressed: () async {
                  Navigator.of(context)
                      .maybePop(); //Öncesinde bir sayfa varsa oraya gitsin yoksa ilk sayfa ise bişe yapmasın
                },
                child: Text('maybe pop'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300)),
            ElevatedButton(
                onPressed: () async {
                  // normal push ile aynı işlemi yapar farkı ise  gittiginiz siteyi ana sayfa yapar yani geriye döndügünüzde ilk sayfayı bulamazsınız direk  çıkış yaparsınız örnek (login sayfası giriş yaptıktan sonra anasayfaya gidiyo geriye bastıgında login sayfasına degil de uygulamadan çıkıyo)
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => greenPage())));
                },
                child: Text('Push pushReplacement'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300)),
          ],
        ),
      ),
    );
  }
}
