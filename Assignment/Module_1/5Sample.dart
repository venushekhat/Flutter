//a program to find the Area of Triangle A = 1/2 × b × h
import 'dart:io';

void main()
{
   var base,hight;

   print("Enter the base of Tringle : "); //base
   base=int.parse(stdin.readLineSync()!);

   print("Enter the Hight of Tringle : ");//hight
   hight=int.parse(stdin.readLineSync()!);

   print("Area Of Tringle : ${1/2 * base * hight}"); //tringle formula
}