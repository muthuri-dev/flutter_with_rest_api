import 'dart:io';

import 'package:flutter/material.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Practice with REST APIs',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('Username'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('Age'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('Occupation'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              onPressed: null,
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
