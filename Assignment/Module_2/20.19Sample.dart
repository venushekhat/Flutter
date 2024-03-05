//      1
//     2  2
//    3  3  3  
//   4  4  4  4  
// 5  5  5  5  5
import 'dart:io';

void main() {
  var n = 5;
  for (var i = 1; i <= n; i++) {
    for (var j = 1; j <= n - i; j++) {
    stdout.write(" ");
    }
    for (var k = 1; k <= i; k++) {
      stdout.write("$i  "); 
    }
    stdout.writeln(); 
  }
}
