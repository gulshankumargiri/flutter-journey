
import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({ Key? key, required this.item}):assert(item != null),
        super (key: key)

  ;

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),

      child: ListTile(
        onTap: (){
          print("${item.id} is tapped");
          },
        leading: Image.network(item.images),
        title: Text(item.name),
        subtitle: Text(
         "${item.desc.substring(0,40)}..."
        ),
        trailing: Text("\$${item.price}",
          textScaler:TextScaler.linear(1.5),
          style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),),
      
      ),
    );
  }
}
