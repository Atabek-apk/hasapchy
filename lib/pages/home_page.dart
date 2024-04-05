import 'package:flutter/material.dart';
import 'package:hasachy/pages/umumy_hasap_page.dart';

import 'gechirmeli_hasap_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration(seconds: 1),
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF5D7583),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.point_of_sale_sharp), text: 'Umumy hasap'),
              Tab(icon: Icon(Icons.upload), text: 'Geçirmeli hasap'),
            ],
          ),
          title: const Center(child: Text("Biznes", style: TextStyle(fontSize: 25),)),
        ),
        body: const TabBarView(
          children: [
          UmumyHasap(),
          GechirmeliHasap(),
        ],),
      ),
    );
  }
}
