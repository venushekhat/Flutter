//  a Program of Addition, Subtraction ,Multiplication and
// Division using Switch case.(Must Be Menu Driven)
import 'dart:io';

void main()
{
  var n1,n2,choice;

  print("Input n1 : "); //n1
  n1=int.parse(stdin.readLineSync()!);

  
  print("Input n2 : "); //n2
  n2=int.parse(stdin.readLineSync()!);

  print("___________Arethmatic_Opration___________"); //choice
  print("1] Addition");
  print("2] Substraction");
  print("3] Multiplication");
  print("4] Division");

print("Enter Your choice : ");
choice=int.parse(stdin.readLineSync()!);

switch(choice)
{
  case 1 :
  print("Addition of Two Numbers : ${n1+n2}"); //Addition
  break;

   case 2 :
  print("Substraction of Two Numbers : ${n1-n2}"); //Substraction
  break;

   case 3 :
  print("Multiplication of Two Numbers : ${n1*n2}"); //Multiplication
  break;

   case 4 :
  print("Division of Two Numbers : ${n1/n2}"); //Division
  break;

  default:
  print("Not Enter a Valid choice....."); //default
  break;
}
}