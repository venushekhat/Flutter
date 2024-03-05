// a program to find the Max number from the given three number using Nested If
import 'dart:io';

void main()
{
  var n1,n2,n3;

  print("Enter the First Number : "); //Number 1
  n1=int.parse(stdin.readLineSync()!);

  print("Enter the Secound Number : "); //Number 2
  n2=int.parse(stdin.readLineSync()!);

  print("Enter the Third Number : "); //Number 3
  n3=int.parse(stdin.readLineSync()!);

//Nested if Condition
  if(n1>n2)
  {
    if(n1>n3)
    {
    print(" $n1 n1 is max n");
    }
    else
    {
    print("$n3 n3 is max Number");
    }
  }

  else
  {
    if(n2>n3)
    {
      print("$n2 n2 is max Number");
    }
    else
    {
      print("$n3 n3 is max Number ");
    }
  }
}