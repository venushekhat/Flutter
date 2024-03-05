//      *
//    *   *
//   *  *   *
//  *  *  *  *
// *  *  *  *  *

import 'dart:io';

void main() {
 var n = 5;
  for (var i = 1; i <= n; i++) {
  for (var k = n-i; k > 1; k--) {
      stdout.write(" "); 
    }
    for (var j = 1; j <= i; j++) {
      stdout.write("*  "); 
    }
    stdout.writeln();
  }
}
