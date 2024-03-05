// import 'dart:io';

// void main() {
//   var name, choice, monthly = 0, year = 0,total=0;

//   print("Enter Your Name : ");
//   name = stdin.readLineSync()!;

//   print("_____________________________");

//   print("1) Student");
//   print("2) Salaried");
//   print("3) Self - Employed");

//   print("______________________________");

//   print("What Do You Do For Your Living ? ");
//   choice = int.parse(stdin.readLineSync()!);

//   switch (choice) {
//     case 1:
//       print("You Are Student");
//       print("Enter Your Annual Income Here : ");
//       year = int.parse(stdin.readLineSync()!);
//       monthly = year ~/ 12; //
//       print("MONTHLEY INCOME");
//       break;

//     case 2:
//       print("You Are Salaried");
//       print("Enter Your Monthly Income Here : ");
//       monthly = int.parse(stdin.readLineSync()!);
//       year = monthly ~/ 12;
//       break;

//     case 3:
//       print("You Are Self - Employed");
//       print("Enter Your Annual Income Here : ");
//       year = int.parse(stdin.readLineSync()!);
//       year=monthly ~/  12;

//       break;

//     default:
//       print("Not Valid choice enter!!");
//       break;
//   }
// }


import 'dart:io';

void main() {
var name;

 print("Enter Your Name : ");
 name = stdin.readLineSync()!;
  print('Please select your occupation type:');
  print('1. Student');
  print('2. Self-Employed');
  print('3. Salaried');

  int occupationType = int.parse(stdin.readLineSync()!);

  double annualIncome, monthlyIncome;

  switch (occupationType) {
    case 1:
      print('Enter your annual income as a student:');
      annualIncome = double.parse(stdin.readLineSync()!);
      monthlyIncome = annualIncome / 12;
      break;
    case 2:
      print('Enter your annual income as a self-employed individual:');
      annualIncome = double.parse(stdin.readLineSync()!);
      monthlyIncome = annualIncome / 12;
      break;
    case 3:
      print('Enter your annual salary:');
      annualIncome = double.parse(stdin.readLineSync()!);
      monthlyIncome = annualIncome / 12;
      break;
    default:
      print('Invalid occupation type selected.');
      return;
  }

  print('Your monthly income is: \$${monthlyIncome.toStringAsFixed(2)}');

  double loanAmount = calculateLoanAmount(monthlyIncome);
  print('You can take a loan of: \$${loanAmount.toStringAsFixed(2)} with 25% interest rate.');
}

double calculateLoanAmount(double monthlyIncome) {
  double loanAmount = monthlyIncome * 12 * 0.25;
  return loanAmount;
}

import 'dart:io';

void main() {
  var name, Choise, Aincome, Mincome;
  print("Enter your name here:");
  name = stdin.readLineSync()!;

  print("");

  print("1)Student");
  print("2)Salired");
  print("3)Self employeed");

  print("");

  print("What do you do for your living? :");
  Choise = int.parse(stdin.readLineSync()!);

  switch (Choise) {
    case 1:
      print("You are Student");
      print("Enter your annual income here:");
      Aincome = int.parse(stdin.readLineSync()!);
      Mincome = Aincome / 12;
      if (Mincome > 18000) {
        print("you can get a loan if your salary is more than 18000");
        print("$Mincome");
      } else {
        print("you can't get a loan because your salary is less than 18000");
      }

      break;
    case 2:
      print("You are Salired");
      print("Enter your Monthly income here:");
      Mincome = int.parse(stdin.readLineSync()!);
      if (Mincome > 18000) {
        print("you can get a loan if your salary is more than 18000");
        print("$Mincome");
      } else {
        print("you can't get a loan because your salary is less than 18000");
      }
      break;
    case 3:
      print("You are Self employeed");
      print("Enter your Annual income here:");
      Aincome = int.parse(stdin.readLineSync()!);
      Mincome = Aincome / 12;
      if (Mincome > 18000) {
        print("you can get a loan if your salary is more than 18000");
        print("$Mincome");
      } else {
        print("you can't get a loan because your salary is less than 18000");
      }
      break;
    default:
      print("Please Enter valid number....");
  }
  print("You got this much of loean amoutn $Mincome");
}