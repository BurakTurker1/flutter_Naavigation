import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/Ogrenci_Detay.dart';
import 'package:flutter_navigation/Ogrenci_Listesi.dart';
import 'package:flutter_navigation/green_page.dart';
import 'package:flutter_navigation/main.dart';
import 'package:flutter_navigation/yellow_page.dart';

class RouteGenerate {
  static Route<dynamic>? _routeOlusur(
      Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      //Android İse

      return MaterialPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
    }
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      //IOS ise

      return CupertinoPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
    } else {
      //Başka Bir Platfom ise web linux vs
      return MaterialPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
    }
  }

  static Route<dynamic>? routeGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlusur(AnaSayfa(), settings);
      case '/YellowPage':
        return _routeOlusur(yellowPage(), settings);
      case '/greenPage':
        return _routeOlusur(greenPage(), settings);
      case '/OgrenciListesi':
        return _routeOlusur(OgrenciListesi(), settings);
      case '/OgrenciDetay':
        var ParametredekiOgrenci = settings.arguments
            as Ogrenci; //object türündeki veriyi bana Ogrenci olarak ver diyosun
        return _routeOlusur(
            OgrenciDetay(
              secilenOgrenci: ParametredekiOgrenci,
            ),
            settings);

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text('404 Not Found'),
                    backgroundColor: Colors.amber,
                  ),
                  backgroundColor: Colors.amber.shade800,
                  body: Center(
                    child: Text(
                      '404 Not Found',
                      style: TextStyle(fontSize: 45),
                    ),
                  ),
                ));
    }
  }
}
