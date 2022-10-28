import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_color_gen/material_color_gen.dart';

import 'views/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    MaterialApp(
      theme: ThemeData(
          primarySwatch: const Color.fromARGB(255, 6, 58, 15).toMaterialColor()),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ),
  );
}
