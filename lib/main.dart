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
              ElevatedButton(onPressed: (){
                //İkiside Aynı  
                //Navigator.push(context, route);
                Navigator.of(context).push(MaterialPageRoute(builder: (RedContext)=>RedPage()));
              }, child: Text('Kirmizi Sayfaya git Android'),style: ElevatedButton.styleFrom(
                primary: Colors.red.shade300
              )),

              ElevatedButton(onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (RedContex)=>RedPage()));
              }, child: Text('Kirmizi Sayfaya git IOS'),style: ElevatedButton.styleFrom(
                primary: Colors.red.shade300
              )),
            ],
          ),
        ),
      );
  }
}