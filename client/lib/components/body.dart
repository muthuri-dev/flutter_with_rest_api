import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final occupationController = TextEditingController();

  String name = '';
  String age = '';
  String occupation = '';

  postData() async {
    try {
      var response = await http.post(Uri.parse('http://localhost:5000/post'),
          body: {"name": "name", "age": "age", "occupation": "occupation"});
      debugPrint(response.body);
    } catch (error) {
      print(error);
    }
  }

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
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  label: Text('Username'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  label: Text('Age'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: occupationController,
                decoration: const InputDecoration(
                  label: Text('Occupation'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  setState(() {
                    name = nameController.text;
                    age = ageController.text;
                    occupation = occupationController.text;
                  });
                },
                child: const Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
