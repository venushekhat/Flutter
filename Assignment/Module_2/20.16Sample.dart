//         *  
//       * *
//     * * *
//   * * * *
// * * * * *

import 'dart:io';

void main() {
  var n = 5;
  for (var i = 1; i <= n; i++) {
    for (var j = n - 1; j >= i; j--) {
      stdout.write('  ');
    }
    for (var k = 1; k <= i; k++) {
      stdout.write('* ');
    }
    stdout.writeln(); 
  }
}
