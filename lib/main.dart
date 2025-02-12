import 'package:flutter/material.dart';
import 'screens/tic_tac_toe_screen.dart';

void main() {
  runApp(TicTacToeGame());
}

class TicTacToeGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: TicTacToeScreen(),
    );
  }
}
