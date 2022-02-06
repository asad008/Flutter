import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),
      body: Center(
        child: Container(
          // ignore: prefer_const_constructors
          child: Text("Hello Asadujjaman"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
