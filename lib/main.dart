import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                 int? gelenSayi  =await Navigator.push<int>(context,
                      CupertinoPageRoute(builder: (RedContex) => RedPage())).then((int? value){
                        debugPrint('AnaSayfa GelenSayi Ios: $value');
                      });
                },
                child: Text('Kirmizi Sayfaya git IOS'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300)),
          ],
        ),
      ),
    );
  }
}
