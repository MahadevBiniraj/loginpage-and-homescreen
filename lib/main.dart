import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screen_1/screen_1.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Loginpage(),
    );
  }
}
