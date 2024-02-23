import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/green_page.dart';
import 'package:flutter_navigation/main.dart';
import 'package:flutter_navigation/yellow_page.dart';

class RouteGenerate {
  static Route<dynamic>? _routeOlusur(Widget gidilecekWidget) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      //Android İse

      return MaterialPageRoute(builder: (context) => gidilecekWidget);
    }
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      //IOS ise

      return CupertinoPageRoute(builder: (context) => gidilecekWidget);
    } else {
      //Başka Bir Platfom ise web linux vs
      return MaterialPageRoute(builder: (context) => gidilecekWidget);
    }
  }

  static Route<dynamic>? routeGenerate(RouteSettings settings) {
    switch (settings.name) {

      case '/':return _routeOlusur(AnaSayfa());
      case '/YellowPage':_routeOlusur(yellowPage());
      case '/greenPage':_routeOlusur(greenPage());
      
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
