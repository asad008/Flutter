// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 10));
    final catalogJson =
        await rootBundle.loadString("assets/files/Catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shopping App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          // ignore: unnecessary_null_comparison
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? ListView.builder(
                  // itemCount: CatalogModel.items.length,
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) => ItemWidget(
                    //item: CatalogModel.items[index],
                    item: CatalogModel.items[index],
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: MyDrawer());
  }
}
