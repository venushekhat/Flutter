// // *
// // * *
// // * * *
// // * * * *
// // * * * * *



import 'dart:io';

void main() {
  var num, i, j;
  print("Enter number of lines you want to print: ");
  num = int.parse(stdin.readLineSync()!);

  for (i = 0; i < num; i++) {
    for (j = 0; j <= i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}
