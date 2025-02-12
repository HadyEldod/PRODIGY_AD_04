import 'package:flutter/material.dart';
import '../utils/game_logic.dart';

class GameBoard extends StatelessWidget {
  final GameLogic gameLogic;
  final VoidCallback onUpdate;

  GameBoard({required this.gameLogic, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            gameLogic.handleTap(index);
            onUpdate();
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: Colors.white.withOpacity(0.1), spreadRadius: 1, blurRadius: 3)
              ],
            ),
            child: Center(
              child: Text(
                gameLogic.board[index],
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
