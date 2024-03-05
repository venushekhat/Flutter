// //        1
// //      2 1
// //    3 2 1
// //   4 3 2 1
// // 5 4 3 2 1
// import 'dart:io';



import 'dart:io';

void main() {
  var n = 5;
  for (var i = 1; i <= n; i++) {
    for (var j = n - 1; j >= i; j--) {
      stdout.write(' '); 
    }
    for (var k = i; k >= 1; k--) {
      stdout.write('$k'); 
    }
    stdout.writeln(); 
  }
}
