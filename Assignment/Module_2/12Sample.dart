// a Program to check the given number is prime or not prime.
import 'dart:io';

void main()
{
    var number;
    print("Enter a Number : ");
    number=int.parse(stdin.readLineSync()!);

    if(number%2==0)
    {
      print("This Is Not A Prime Number...");
    }
    else{
      print("This is a Prime Number...");
    }
}

Y