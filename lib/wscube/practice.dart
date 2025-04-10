import 'dart:io';

void main(){
  print("welcome to sadi sajawat ");


  stdout.write('enter your name ');
  // stdin;
var name = stdin.readLineSync();
print("welcome,$name");

// we can call the class in two form 1. with new keyword , 2. without new keyword...


  //creating a class object.
new Human();//with new keyword
Human();// without new keyword both are correct and this is latest update in flutter.


}

class Human{
  Human();//default constructor .. you can have it or you can remove it .. the function invocation is start from this default constructor.
}