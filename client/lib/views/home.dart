import 'package:client/components/body.dart';
import 'package:client/components/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST APIs'),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * .30,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(220),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: const MyBody(),
    );
  }
}
