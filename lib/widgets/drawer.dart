import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    final image1= "assets/images/FIT2.jpg";
    final image2= "assets/images/gulshan.jpg";

    return Drawer(
      child: Container(
        color: Colors.deepPurple[600],
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child:UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                    decoration: const BoxDecoration( // Add this decoration property
                      color: Colors.transparent,),
                  accountName: Text("Gulshan kr Giri"),
                  accountEmail:Text("golukr@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(image1,),
                    // backgroundImage: NetworkImage(image ka url),
                  ),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                color: Colors.white,),
              title: Text("Home",style: TextStyle(
                  color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,
              ),
              title: Text("Profile",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,
              ),
              title: Text("Email Me",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );

  }
}
