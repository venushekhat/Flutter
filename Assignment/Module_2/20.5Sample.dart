// Write a program you have to print the Fibonacci series up to user given
// number
import 'dart:io';

void main() {
  int i = 0, j = 1, k, num; //variable

  print("Enter The Number : ");
  num = int.parse(stdin.readLineSync()!);

  print(i);
  print(j); // Print the second Fibonacci number

  k = i + j;
  while (k < num) {
    print(k);
    i = j;
    j = k;
    k = i + j;
  }
}

