// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({ Key? key, required this.imagePath}) : super(key: key);

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Item Detail"),),
      body:  SizedBox(
        // height: 100,
        // width: 200,
        child: Image.asset(imagePath, fit: BoxFit.cover,),),
    );
  }
}