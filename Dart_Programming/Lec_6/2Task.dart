// make addition, Subtraction, Multiplication and Division of Two Numbers.
import 'dart:io';

void main()
{
    var num1,num2;

    print("Input First Number : ");
    num1=int.parse(stdin.readLineSync()!);

    print("Input Secound Number : ");
    num2=int.parse(stdin.readLineSync()!);

    print("Addition of Two Numbers       : ${num1+num2} "); //Addition

    print("Subtraction of Two Numbers    : ${num1-num2} "); //Subtraction

    print("Multiplication of Two Numbers : ${num1*num2} "); //Multiplication

    print("Division of Two Numbers       : ${num1/num2} "); //Division
}