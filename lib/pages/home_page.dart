import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sadi_sajawat/models/catalog.dart';
import 'package:sadi_sajawat/widgets/homepage_widgets/catalog_header.dart';
import 'package:sadi_sajawat/widgets/homepage_widgets/catalog_list.dart';
// import 'package:sadi_sajawat/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  // final int day= 30;

  // final String name = "gulshan kr giri";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString(
      "assets/files/catalog.json",
    );
    final decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
    // print(productData);
    CatalogModel.items =
        List.from(productData).map<Item>(
                (item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList =List.generate(40, (index)=>CatalogModel.items[0]); 
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
              CircularProgressIndicator().centered().expand()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(child: CloseButton(color: Colors.red)),
          Expanded(child: BackButton()),
        ],
      ),
    );
  }
}



// old design
// 2
// body: Padding(
//   padding: const EdgeInsets.all(16.0),
//   child:
//       (CatalogModel.items.isNotEmpty)? GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 15,
//
//
//         ),
//         itemBuilder: (context,index){
//           final item = CatalogModel.items[index];
//           return Card(
//             clipBehavior: Clip.antiAlias,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: GridTile(
//                 header: Text(item.name,style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),),
//                 footer: Text(item.price.toString(),style: TextStyle(
//                   color: Colors.white70,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 17.0,
//                 ),),
//                 child: Image.network(item.images),
//               ));
//         },
//         itemCount: CatalogModel.items.length,
//
//       )
//
//           // ListView.builder(
//           //   itemCount:CatalogModel.items.length,
//           //   itemBuilder:
//           //       (context, index) =>
//           //           ItemWidget(item: CatalogModel.items[index]),
//           // )
//           : Center(child: CircularProgressIndicator()),
// ),
//
// // 3
// drawer: MyDrawer(),
// 4