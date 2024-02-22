import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RedPage'),backgroundColor: Colors.red,),
      body: Center(
        child: Text('RedPage',style: TextStyle(fontSize: 24),),
        ),
    );
  }
}