// a program to find the simple Interest --Simple Interest = (P x R x T)/100

import 'dart:io';

void main() {
  var principal, time;
  double rate;

  print("Enter the Principal Amount : "); //principal
  principal = int.parse(stdin.readLineSync()!);

  print("Enter the Rate Of Total Amount : "); //rate
  rate = double.parse(stdin.readLineSync()!);

  print("Enter the Amount Time Period : "); //Time-period
  time = int.parse(stdin.readLineSync()!);

  print("Simple interest: ${(principal * rate * time) / 100}"); //Simple Intrest Formula
}
