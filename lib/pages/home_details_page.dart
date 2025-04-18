import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadi_sajawat/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';


class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.bold.xl4.color(Vx.red900).make(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:WidgetStateProperty.all(MyTheme.darkBluishColor),
              ),
              onPressed:(){},
              child: "Add to Cart".text.xl2.color(Colors.white).make(),
            ).wh(160,50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(tag:Key(catalog.id.toString()),
                child: Image.network(catalog.images).h32(context),),
            Expanded(child:
            VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                      catalog.desc
                          .text.textStyle(context.captionStyle).lg
                          .make(),
                      10.heightBox,
                    ],
                  ).py64().p12(),
            ),
            ))
          ],
        ),

      ),
    );
  }
}
