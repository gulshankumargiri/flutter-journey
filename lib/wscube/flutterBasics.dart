import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(title: 'gulshan kr giri'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title:Center(
            child: Text("Flutter practice with container"),

          ) ,
        ),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children:
              [
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.lightBlue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.grey,
                ), Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,

                color: Colors.red,
              ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.green,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: SingleChildScrollView(
                    scrollDirection:Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.lightBlue,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.grey,
                        ), Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.yellow,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          //ROW and COLUMN Examples

          // child: Row(
          //
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //
          //   children: [
          //     Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       // crossAxisAlignment: CrossAxisAlignment.baseline,
          //       children: [
          //         Text('A4',style: TextStyle(fontSize: 23),),
          //         Text('B4',style: TextStyle(fontSize: 23),),
          //         Text('C4',style: TextStyle(fontSize: 23),),
          //         Text('D4',style: TextStyle(fontSize: 23),),
          //         Text('E4',style: TextStyle(fontSize: 23),),
          //       ],
          //     ),
          //     Text('A',style: TextStyle(fontSize: 23),),
          //     Text('B',style: TextStyle(fontSize: 23),),
          //     Text('C',style: TextStyle(fontSize: 23),),
          //     Text('D',style: TextStyle(fontSize: 23),),
          //     Text('E',style: TextStyle(fontSize: 23),),
          //     ElevatedButton(
          //         onPressed: (){
          //           print("pressed");
          //         },
          //         child:Text(
          //             'Click me ',
          //             style:TextStyle(color: Colors.lightGreen)
          //         )),
          //     ElevatedButton(
          //         onPressed: (){
          //           print('text-button pressed');
          //         },
          //
          //         child:InkWell(
          //           onTap: (){
          //             print('someone clicked me');
          //             },
          //           child: Text('tap me'),
          //         )),
          //   ],
          // ),
        )


      // Container Example

      // child:Container(
      // width: 100,
      // height: 100,

      // color: Colors.yellow,
      //   child:Center(
      //     child: Text("the new box", style:TextStyle(color: Colors.deepOrange,
      //     fontSize: 20,
      //     fontWeight: FontWeight.w800,
      //     backgroundColor: Colors.black26) ,
      //     ),
      //   ) ,
      // ),

      // TextButton Example

      // child: TextButton(child: Text('click here!!'),

      // NORMAL press ...!

      // onPressed: (){
      //   print('Button is pressed');
      //
      // },

      //ON long press ....!

      //   onLongPress: (){
      //   print('long pressing ');
      //   },
      // ),
      //

      // Elevated Button Example

      // child:ElevatedButton(
      //   onPressed:(){
      //     print('elevated button clicked');},
      // child: Text('elevated button')),


      //Outlined Button example

      // child:OutlinedButton(onPressed: (){
      //   print('pressed');
      // },
      //     child: Text('outlined button'),
      // ), //OutLined button Example

      // Images EXample

      // child:Container(
      //   width: 150,
      //  height: 150,
      // child:Image.asset('assets/images/FIT2.jpg'),)




      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
