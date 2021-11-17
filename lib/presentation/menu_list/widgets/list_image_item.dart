import 'package:flutter/material.dart';

class ListImageItem extends StatelessWidget {
  const ListImageItem({
    Key? key,
    required this.listGambar,
  }) : super(key: key);

  final String listGambar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Image.asset(
        listGambar,
        fit: BoxFit.cover,
      ),
    );
  }
}
