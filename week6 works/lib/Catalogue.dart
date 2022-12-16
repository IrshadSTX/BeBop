// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:week6_ui_examples/catalogue/tabs/categories.dart';
import 'package:week6_ui_examples/catalogue/tabs/products.dart';

class Cataloque extends StatelessWidget {
  const Cataloque({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.grey[350],
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: const Text(
                'Catalogue',
                style: TextStyle(fontFamily: 'poppins', color: Colors.white),
              ),
              // ignore: prefer_const_literals_to_create_immutables
              actions: [
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                    size: 33,
                  ),
                )
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(
                      icon: Text("Products",
                          style:
                              TextStyle(fontFamily: 'poppins', fontSize: 18))),
                  Tab(
                      icon: Text("Categories",
                          style:
                              TextStyle(fontFamily: 'poppins', fontSize: 18))),
                ],
              ),
            ),
            body: const TabBarView(children: [
              ProductsCatalogue(),
              CategoriesCatologue(),
            ])),
      ),
    );
  }
}
