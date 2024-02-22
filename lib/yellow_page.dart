import 'package:flutter/material.dart';

class yellowPage extends StatelessWidget {
  const yellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('yellowPage'),backgroundColor: Colors.yellow,),
      body: Center(
        child: Text('yellowPage',style: TextStyle(fontSize: 24),),
        ),
    );
  }
}