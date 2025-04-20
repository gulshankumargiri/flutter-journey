import 'package:flutter/material.dart';
import 'package:sadi_sajawat/pages/cart_page.dart';
import 'package:sadi_sajawat/pages/home_page.dart';
import 'package:sadi_sajawat/pages/login_page.dart';
import 'package:sadi_sajawat/utils/routes.dart';
import 'package:sadi_sajawat/widgets/theme.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context) => LoginPage(),
         MyRoutes.homeRoute:(context)=>HomePage(),
         MyRoutes.loginRoute:(context)=>LoginPage(),
         MyRoutes.cartRoute:(context)=>CartPage(),
        // "/login":(context)=>LoginPage(),
      },
    );
  }
}
