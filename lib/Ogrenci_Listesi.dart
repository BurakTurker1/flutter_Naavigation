import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> tumOgrenciler = List.generate(elemanSayisi,
        (index) => Ogrenci(index + 1, 'ad${index + 2}', 'Soyad${index + 3}'));
    return Scaffold(
      appBar: AppBar(
        title: Text('Ögrenci Listesi'),
      ),
      backgroundColor: Colors.deepOrangeAccent[300],
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                var secilen = tumOgrenciler[index];
                Navigator.of(context).pushNamed('/OgrenciDetay',arguments: secilen);
              },
              title: Text(
                  tumOgrenciler[index].ad + ' ' + tumOgrenciler[index].soyad),
              leading: CircleAvatar(
                child: Text(tumOgrenciler[index].id.toString()),
              ),
            );
          },
          itemCount: elemanSayisi,
        ),
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String ad;
  final String soyad;

  Ogrenci(this.id, this.ad, this.soyad);
}
