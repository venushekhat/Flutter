
import 'dart:io';

void user() {
  String name, birthdate;

  print("Enter Your Name : ");
  name = stdin.readLineSync()!;

  print("Enter Your Birth-date (YYYY-MM-DD): ");
  birthdate = stdin.readLineSync()!;

  DateTime dob = DateTime.parse(birthdate);
  DateTime now = DateTime.now();

  Duration difference = now.difference(dob);

  int days = difference.inDays;
  int months = 0;
  int years = 0;

  while (days >= 365) {
    years++;
    days -= 365;
  }

  while (days >= 30) {
    months++;
    days -= 30;
  }

  print('Name: $name');
  print('Years: $years');
  print('Months: $months');
  print('Days: $days');
}

Future<void> fetchindetails() async {
  await Future.delayed(Duration(seconds: 2));
  user();
}

void main() {
  fetchindetails();
}
