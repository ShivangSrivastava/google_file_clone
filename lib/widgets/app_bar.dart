import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

AppBar myAppBar(BuildContext context) {
  return AppBar(
    titleSpacing: 0,
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          const Icon(Icons.menu),
          10.widthBox,
          const TextField(
            showCursor: false,
            decoration: InputDecoration(
              hintText: "Search in Files",
              border: InputBorder.none,
            ),
          ).expand(),
          const Icon(Icons.search)
        ],
      ),
    ).p16(),
  );
}
