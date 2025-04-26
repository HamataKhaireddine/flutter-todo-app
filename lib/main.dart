import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/home_page.dart';

void main() async{

  //initialize hive db
  await Hive.initFlutter();

  //open a box
  var box= await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow, // Works with Material 2
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow, // Ensures Material 3 color application
          primary: Colors.yellow, // Explicit primary color
          secondary: Colors.black, // Custom secondary color
        ),
        useMaterial3: true, // Ensuring Material 3 usage
      ),
    );
  }
}
