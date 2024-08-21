import 'package:flutter/material.dart';

/// The widget that represents the main content of the application.
class Miolo extends StatelessWidget {
  /// The widget that represents the main content of the application.
  const Miolo({
    required this.child,
    super.key,
  });

  /// Child widget that will be displayed in the main content.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
