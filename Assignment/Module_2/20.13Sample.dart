// 1
// 2 2
// 3 3 3
// 4 4 4 4
// 5 5 5 5 5

import 'dart:io';

void main() {
  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write(i);
    }
    stdout.writeln();
  }
}


