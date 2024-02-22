import 'package:flutter/material.dart';

class greenPage extends StatelessWidget {
  const greenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('greenPage'),backgroundColor: Colors.green,),
      body: Center(
        child: Text('greenPage',style: TextStyle(fontSize: 24),),
        ),
    );
  }
}