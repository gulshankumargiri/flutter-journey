import 'package:flutter/material.dart';
import 'package:sadi_sajawat/models/catalog.dart';
import 'package:sadi_sajawat/pages/home_details_page.dart';
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
          return InkWell(
              onTap: ()=>Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context)=>HomeDetailPage(
                      catalog: catalog),
              ),),
              child: CatalogItem(catalog: catalog,)
          );
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
          Hero(
              tag:Key(catalog.id.toString()),
              child: CatalogImage(image: catalog.images,)),
          Expanded(child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(Theme.of(context).colorScheme.onSecondary).bold.make(),
              "${catalog.desc.split(' ').take(8).join(' ')}..."
                    .text.textStyle(context.captionStyle).color(Theme.of(context).colorScheme.onSecondary)
                    .make(),
              10.heightBox,
              Padding(
                padding:EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.bold.xl.color(Theme.of(context).colorScheme.onSecondary).make(),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:WidgetStateProperty.all(Theme.of(context).colorScheme.secondary),
                      ),
                      onPressed:(){},
                      child: "Add to Cart".text.color(Colors.white).make(),
                    )
                  ],
                ),
              ).pOnly(right: 8.0)
            ],
          )),
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
