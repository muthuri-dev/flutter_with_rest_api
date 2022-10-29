import 'package:flutter/material.dart';

class MyGet extends StatefulWidget {
  const MyGet({super.key});

  @override
  State<MyGet> createState() => _MyGetState();
}

class _MyGetState extends State<MyGet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(204, 145, 143, 143),
        appBar: null,
        body: SafeArea(
          child: ListView(
            children: const [
              Center(
                child: Text(
                  'View Data',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
