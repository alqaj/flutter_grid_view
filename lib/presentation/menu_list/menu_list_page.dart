// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:latihan05/presentation/item_detail/item_detail_page.dart';
import 'package:latihan05/presentation/menu_list/widgets/list_image_item.dart';


class MenuListPage extends StatefulWidget {
  const MenuListPage({Key? key}) : super(key: key);

  @override
  _MenuListPageState createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
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
      appBar: AppBar(title: Text("Food Choice"),),
      body: SafeArea(
        child: GridView.builder(
          itemCount: listGambar.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, i) => InkWell(
            child: ListImageItem(listGambar: listGambar[i]),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex) => ItemDetailPage(imagePath: listGambar[i],)));
            },
          ),
        ),
      ),
    );
  }
}
