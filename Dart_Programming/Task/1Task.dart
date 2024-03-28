import 'dart:io';

void main() {
  var choice, ch, number;

print("1]______Number______");
print("2])_____Alphbates_____");

  print("_____________________________________");
  
  print("_____Enter your choice_____");
  choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Enter the number : ");
      number = int.parse(stdin.readLineSync()!);

      if (number % 2 == 0) {
        print("This Number is even");
      } else {
        print("This Number is odd..");
      }
      break;

    case 2:
      print("Enter a character: ");
      ch = stdin.readLineSync()!;

      if (ch == 'A' || ch == 'a' || ch == 'E' || ch == 'e' || ch == 'I' || ch == 'i' || ch == 'O' || ch == 'o' || ch == 'U' || ch == 'u') {
        print("This is a Vowel...");
      } else {
        print("This is a Consonant..");
      }
      break;

    default:
      print("Not Enter Valid Choice...");
      break;
  }
}
