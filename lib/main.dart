import 'package:flutter/material.dart';
import 'package:latihan05/presentation/menu_list/menu_list_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan05: Grid View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuListPage()
    );
  }
}

