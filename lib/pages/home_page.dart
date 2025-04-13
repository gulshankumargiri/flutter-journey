import 'package:flutter/material.dart';
import 'package:sadi_sajawat/widgets/drawer.dart';

class HomePage extends StatelessWidget {
final int day= 30;
final String name = "gulshan kr giri";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) { 

    return Scaffold(

      // 1
      appBar: AppBar(
        // backgroundColor: Colors.deepPurple,
        title: Center(child: Text("30 Days")),
      ),

      // 2
      body: Center(
        child: Text("this is a series of $day videos of flutter dev. by $name"),

      ),

      // 3
      drawer: MyDrawer(),

      // 4
      bottomNavigationBar:Row(
        children: [
          Expanded(child: CloseButton(
            color: Colors.red,
          )),
          Expanded(child: BackButton()),

        ],
      ),
    );
  }
}
