// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const ImageCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: 150,
            width: 150,
          ),
        ),
        10.heightBox,
        title.text.make(),
        5.heightBox,
        subtitle.text.color(Colors.white.withOpacity(0.6)).make()
      ],
    );
  }
}

class TextCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final String? subtitle;
  const TextCard({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          icon.p16(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title.text.make(),
              5.heightBox,
              (subtitle != null)
                  ? subtitle!.text
                      .color(Colors.white.withOpacity(0.6))
                      .xs
                      .make()
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
