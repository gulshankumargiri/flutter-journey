import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
    // child: Center(
    //   child: Text("Login Page",
    //   style: TextStyle(
    //     color: Colors.lightBlue,
    //     fontWeight: FontWeight.bold,
    //     fontSize: 20,
    //   ),
    //   ),
    // ),

      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,),

          SizedBox(
            height: 30.0,
          ),
          Text("Welcome Back ",
            style:TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,)
          ),
          SizedBox(
              height: 20.0
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration:InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "User Name",
              ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration:InputDecoration(

                    hintText: "Enter Password",
                    labelText: "Password",

              ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  style:TextButton.styleFrom(),
                    child: Text("Login"),
                    onPressed: (){print("Logged In");},
                ),
              ]
            ),

          ),
          
                                  
        ],
        
      ),
    );
  }
}
