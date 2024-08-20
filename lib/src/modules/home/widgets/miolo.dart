import 'package:flutter/material.dart';

class Miolo extends StatelessWidget {
  const Miolo({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
