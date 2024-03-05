// a program to calculate sum of 5 subjects & find the
// percentage. Subject marks entered byuser.
import 'dart:io';

void main()
{
  var m1,m2,m3,m4,m5,totalMarks;
  double percentage;

  print("Input First Subject Marks : "); //Subject 1 marks
  m1=int.parse(stdin.readLineSync()!);

  print("Input secound Subject Marks : ");  //Subject 2 marks
  m2=int.parse(stdin.readLineSync()!);

  print("Input third Subject Marks : "); //Subject 3 marks
  m3=int.parse(stdin.readLineSync()!);

  print("Input Fourth Subject Marks : ");  //Subject 4 marks
  m4=int.parse(stdin.readLineSync()!);

  print("Input Fifth Subject Marks : ");  //Subject 5 marks
  m5=int.parse(stdin.readLineSync()!);

  print("First Subject Marks   = $m1");
  print("Secound Subject Marks = $m2");
  print("third Subject Marks   = $m3");
  print("Fourth Subject Marks  = $m4");
  print("Fifth Subject Marks   = $m5");

  totalMarks=m1+m2+m3+m4+m5; //total all subject marks


   percentage = (totalMarks / 500) * 100; //percentage counting

  print("All Subject Marks Total is $totalMarks");
   print("Percentage of the total $percentage");

}