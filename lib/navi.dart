import 'package:flutter/material.dart';

class navigation extends StatelessWidget {
  const navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(),
        ),
      ),
    );
  }
}
