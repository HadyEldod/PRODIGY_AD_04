import 'package:flutter/material.dart';
import '../widgets/game_board.dart';
import '../widgets/reset_button.dart';
import '../utils/game_logic.dart';

class TicTacToeScreen extends StatefulWidget {
  @override
  _TicTacToeScreenState createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  GameLogic gameLogic = GameLogic();

  void _resetGame() {
    setState(() {
      gameLogic.resetGame();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (gameLogic.winner.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                gameLogic.winner == 'Draw' ? "It's a Draw!" : 'Winner: ${gameLogic.winner}',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ),
          GameBoard(gameLogic: gameLogic, onUpdate: () => setState(() {})),
          SizedBox(height: 20),
          ResetButton(onReset: _resetGame),
        ],
      ),
    );
  }
}
