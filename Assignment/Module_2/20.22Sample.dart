// 1
// 4 4
// 9 9 9
// 16 16 16 16
// 25 25 25 25 25
import 'dart:io';

void main() {
  var s;
  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= i; j++) 
    {
      s=i*i;
      stdout.write('$s');
    }
    stdout.writeln();
  }
}
