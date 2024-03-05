// a program to find the Area of Circle
import 'dart:io';

void main()
{
  var r;
  double pi=3.14;

  print("Enter the Circle of Radius : "); //radius
  r=int.parse(stdin.readLineSync()!);

  print("Area Of Circle : ${pi*r*r}"); //circle area
}
