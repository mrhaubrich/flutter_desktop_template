import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_route/src/modules/home/widgets/sidebar.dart';

class SidebarScaffold extends StatelessWidget {
  const SidebarScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Sidebar(),
          Expanded(
            child: Scaffold(
              body: RouterOutlet(),
            ),
          ),
        ],
      ),
    );
  }
}
