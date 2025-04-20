// Catalog image 
import 'package:flutter/material.dart';
import 'package:sadi_sajawat/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(
        image,
        fit: BoxFit.cover,

    ).box.rounded.p16.color(context.canvasColor).make().p16().w40(context);
  }
}