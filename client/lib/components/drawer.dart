import 'package:client/views/delete.dart';
import 'package:client/views/get.dart';
import 'package:client/views/update.dart';
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
        children: [
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'REST APIs',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'monospace',
                fontSize: 20,
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.get_app_outlined),
                iconColor: Colors.white,
                title: const Text(
                  'View Data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyGet()));
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.delete_outline),
                iconColor: Colors.white,
                title: const Text(
                  'Delete Data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyDelete()));
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.update),
                iconColor: Colors.white,
                title: const Text(
                  'Update Data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyUpdate()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
