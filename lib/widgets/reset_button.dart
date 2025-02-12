import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback onReset;

  ResetButton({required this.onReset});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onReset,
      child: Text('Reset Game', style: TextStyle(fontSize: 20)),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        backgroundColor: Colors.red,
      ),
    );
  }
}
