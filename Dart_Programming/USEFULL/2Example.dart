
import 'dart:io';

void main() {
  //Enter birth date
  print('Enter birth date (YYYY-MM-DD):');
  String startDateString = stdin.readLineSync()!;
  DateTime startDate = DateTime.parse(startDateString);

  // Input end date
  print('Enter now date (YYYY-MM-DD):');
  String endDateString = stdin.readLineSync()!;
  DateTime endDate = DateTime.parse(endDateString);

  Duration difference = endDate.difference(startDate);

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

  print('Years: $years');
  print('Months: $months');
  print('Days: $days');
}