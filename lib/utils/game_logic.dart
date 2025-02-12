class GameLogic {
  List<String> board = List.filled(9, '');
  bool isXTurn = true;
  String winner = '';

  void handleTap(int index) {
    if (board[index] == '' && winner == '') {
      board[index] = isXTurn ? 'X' : 'O';
      isXTurn = !isXTurn;
      _checkWinner();
    }
  }

  void _checkWinner() {
    List<List<int>> winPatterns = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
      [0, 4, 8], [2, 4, 6] // Diagonals
    ];

    for (var pattern in winPatterns) {
      String a = board[pattern[0]];
      String b = board[pattern[1]];
      String c = board[pattern[2]];
      if (a == b && b == c && a != '') {
        winner = a;
        return;
      }
    }

    if (!board.contains('') && winner == '') {
      winner = 'Draw';
    }
  }

  void resetGame() {
    board = List.filled(9, '');
    isXTurn = true;
    winner = '';
  }
}
