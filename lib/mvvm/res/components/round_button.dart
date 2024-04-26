
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final bool loading;
  final String title;
  final double height;
  final VoidCallback onPressed;
  const RoundButton({super.key,
    this.loading = false,
    required this.title,
    this.height = 50,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          fixedSize: Size(MediaQuery.sizeOf(context).width, height),
        ),
        child: Text(title,style: const TextStyle(fontSize: 20,color: Colors.white),)
    );
  }
}
