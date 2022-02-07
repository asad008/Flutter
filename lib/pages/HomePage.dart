// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:catalog_app/widgets/drawer.dart';
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
            
            child: Text("Hello Asadujjaman"),
          ),
        ),
        drawer: MyDrawer());
  }
}
