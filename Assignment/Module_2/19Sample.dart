// Write a program of to find out the Area of Triangle, Rectangle and
// Circle using If Condition.(Must Be Menu Driven)

import 'dart:io';


void main()
{
  var base,hight,r,width,length,choice; //variable
  double pi=3.14;

  print("_______________Area FindOut_______________");
  print("1] Tringle");
  print("2] Rectangle");
  print("3] Circle");

  print("Enter Your Choice : ");
  choice=int.parse(stdin.readLineSync()!);

  switch(choice)
  {
    case 1:
    print("_________Area Tringle Formula______");
    
   print("Enter the base of Tringle : "); //base
   base=int.parse(stdin.readLineSync()!);

   print("Enter the Hight of Tringle : ");//hight
   hight=int.parse(stdin.readLineSync()!);

   print("Area Of Tringle : ${1/2 * base * hight}"); //tringle formula
  

  case 2 :
  print("_________Area Rectangle Formula_______");

  print("Enter the width of Rectangle : "); //width
  width=int.parse(stdin.readLineSync()!);

  print("Enter the length of rectangle : "); //length
  length=int.parse(stdin.readLineSync()!);

  print("Area of Rectangle : ${width * length}");

  case 3 :
  
  print("Enter the Circle of Radius : "); //radius
  r=int.parse(stdin.readLineSync()!);

  print("Area Of Circle : ${pi*r*r}"); //circle area

  default : 
  print("Dont enter valid choice..."); //default
  }

  
}