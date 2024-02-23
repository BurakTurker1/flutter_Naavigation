import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rasgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    //will popScope kaldırılmış
    /*return PopScope(
      canPop: true, //canPop mobil cihazsın  automaticallyImplyLeading aççıkkenki dönüşünü donanımdaki dönüş buttonu dahil geri dönüş buttonlarını engelliyo
      
      onPopInvoked: (didPop){  
        //debugPrint('Pop Scope Çalisti');        
        // _rasgeleSayi = Random().nextInt(100);
        // Navigator.pop(context,_rasgeleSayi);
      },
      */


      //!!!! WillPopScope artık kullanılmıyo onun yerine "PopScope" Kullanılıyo 
    return WillPopScope(
      onWillPop: () {
        debugPrint('willPopScope çalisti');
        _rasgeleSayi = Random().nextInt(100);
        Navigator.pop(context, _rasgeleSayi);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('RedPage'), backgroundColor: Colors.red,
          automaticallyImplyLeading:
              true, //sayfanın sol üstündeki geri dön buttonunu aç kapa yapıyor
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

                              ElevatedButton(
                onPressed: () async {
                  if(Navigator.canPop(context)){
                    debugPrint('evet pop olabilir');
                  }else{
                    debugPrint('Hayir pop olamaz');
                  }
                },
                child: Text('Maybe Pop Kullanimi'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300)),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
