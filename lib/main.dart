import 'package:flutter/material.dart';
import 'package:sadi_sajawat/home_page.dart';
import '';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}
