import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
final int day= 30;
final String name = "gulshan kr giri";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("30 Days")),
      ),
      body: Center(
        child: Container(
          child:  Text("this is a series of $day videos of flutter dev. by $name") ,
        ),

      ),
      drawer: Drawer(),
      bottomNavigationBar:Row(
        children: [
          Expanded(child: CloseButton()),
          Expanded(child: BackButton()),

        ],
      ),
    );
  }
}
