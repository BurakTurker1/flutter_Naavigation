import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/Ogrenci_Listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci, super.key});

  @override
  Widget build(BuildContext context) {
    var secilen = ModalRoute.of(context)!.settings.arguments
        as Ogrenci; //object türündeki veriyi bana Ogrenci olarak ver diyosun
    print('Secilen Ogrenci ::: ${secilen.ad}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Ogrenci Detay'),
      ),
      body: Center(
        child: Column(children: [
          Text(secilenOgrenci.id.toString()),
          Text(secilenOgrenci.ad),
          Text(secilenOgrenci.soyad),
        ]),
      ),
    );
  }
}
