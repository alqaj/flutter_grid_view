import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<String> listGambar = [
    "assets/images/food01.jpg",
    "assets/images/food02.jpg",
    "assets/images/food03.jpg",
    "assets/images/food04.jpg",
    "assets/images/food05.jpg",
    "assets/images/food06.jpg",
    "assets/images/food01.jpg",
    "assets/images/food02.jpg",
    "assets/images/food03.jpg",
    "assets/images/food04.jpg",
    "assets/images/food05.jpg",
    "assets/images/food06.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: listGambar.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, i) => SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              listGambar[i],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
