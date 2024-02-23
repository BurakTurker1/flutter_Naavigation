import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rasgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RedPage'), backgroundColor: Colors.red,
        automaticallyImplyLeading:
            false, //sayfanın sol üstündeki geri dön buttonunu aç kapa yapıyor
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'RedPage',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  _rasgeleSayi = Random().nextInt(100);
                  print('Random Sayi $_rasgeleSayi');
                  Navigator.of(context).pop(_rasgeleSayi);
                },
                child: Text(' Geri dön')),
          ],
        ),
      ),
    );
  }
}
