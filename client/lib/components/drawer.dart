import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .75,
      backgroundColor: const Color.fromARGB(125, 78, 160, 12),
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'REST APIs',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'monospace',
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
