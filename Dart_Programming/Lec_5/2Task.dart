bool checkWinner(List<List<int>> game) {
  // Check rows
  for (int i = 0; i < 3; i++) {
    if (game[i][0] != 0 && game[i][0] == game[i][1] && game[i][0] == game[i][2]) {
      return true;
    }
  }

  // Check columns
  for (int i = 0; i < 3; i++) {
    if (game[0][i] != 0 && game[0][i] == game[1][i] && game[0][i] == game[2][i]) {
      return true;
    }
  }

  // Check diagonals
  if (game[0][0] != 0 && game[0][0] == game[1][1] && game[0][0] == game[2][2]) {
    return true;
  }
  if (game[0][2] != 0 && game[0][2] == game[1][1] && game[0][2] == game[2][0]) {
    return true;
  }

  // No winner found
  return false;
}

void main() {
  List<List<int>> game = [
    [1, 1, 0],
    [2, 1, 0],
    [2, 1, 5]
  ];

  bool hasWinner = checkWinner(game);
  if (hasWinner) {
    for (var i = 0; i < 3; i++) {
      print(game[i]);
      // print("\n");
    }
    print("We have a winner!");
  } else {
    print("No winner yet.");
  }
}
