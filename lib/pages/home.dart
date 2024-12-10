import 'package:flutter/material.dart';
import 'package:sports_app/components/appbar.dart';
import 'package:sports_app/components/drawer.dart';
import 'package:sports_app/components/searchbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarwidget(),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          SearchbarWidget()
        ],
      ),
    );
  }
}