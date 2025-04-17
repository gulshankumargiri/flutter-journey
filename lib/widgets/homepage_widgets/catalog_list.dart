import 'package:flutter/material.dart';
import 'package:sadi_sajawat/models/catalog.dart';
import 'package:sadi_sajawat/widgets/homepage_widgets/catalog_image.dart';
import 'package:sadi_sajawat/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder:(context ,index){
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog,);
        }
    );
  }
}

// Catalog Item
class CatalogItem extends StatelessWidget {
final Item catalog;
  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(image: catalog.images,),
          Expanded(child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
              "${catalog.desc.split(' ').take(8).join(' ')}..."
                    .text.textStyle(context.captionStyle)
                    .make(),
              10.heightBox,
              Padding(
                padding:EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:WidgetStateProperty.all(MyTheme.darkBluishColor),
                      ),
                      onPressed:(){},
                      child: "Buy".text.color(Colors.white).make(),
                    )
                  ],
                ),
              ).pOnly(right: 8.0)
            ],
          )),
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}
