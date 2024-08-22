import 'package:flutter/material.dart';

/// An example card widget.
class ExampleCard extends StatelessWidget {
  /// Creates an example card widget.
  const ExampleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 200,
      child: Card(
        surfaceTintColor: Colors.black,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onSecondaryTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Example Card'),
                Text('This is an example card.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
