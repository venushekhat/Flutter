//  Write a program to print the number in reverse order.

import 'dart:io';

void main() {
  int number;
  print("Input The Number : ");
  number = int.parse(stdin.readLineSync()!);

  print("Number in reverse order: ${reverseNumber(number)}");
}

int reverseNumber(int n) {
  int reversedNumber = 0;

  while (n != 0) {
    int digit = n % 10;
    reversedNumber = reversedNumber * 10 + digit;
    n ~/= 10;
  }
  return reversedNumber;
}

// import 'dart:io';

// void main()
// {
//   var revers;
//   stdout.write('Enter a Number : ');
//   int number = int.parse(stdin.readLineSync()!);
//   revers = number.toString().split('').reversed.join();
//   print(revers);

// }