import 'package:flutter/material.dart';

void main(){
  runApp (FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home:DashBoardScreen() ,
    );
  }

}
class DashBoardScreen extends StatelessWidget{
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dashboard",)),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey,
              height: 100,

              child: Center(child: Text("hello i am stuck")),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 50,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 50,
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              height: 100,
              width: 50,
            ),
          ),
          SingleChildScrollView(

            child: Column(
              children: [
                Container(
                  height: 50,
                  color: Colors.black,
                  child: Center(child: Text("hello i am stuck")),
                ),
                Container(
                  height: 50,

                  color: Colors.cyan,
                  child: Center(child: Text("hello i am stuck")),
                ),
                Container(
                  height: 50,
                  color: Colors.green,
                  child: Center(child: Text("hello i am stuck")),
                ),
                Container(
                  height: 50,
                  color: Colors.red,
                  child: Center(child: Text("hello i am stuck")),
                ),
              ],
            ),
          )
        ],

      ),



    );
  }



}