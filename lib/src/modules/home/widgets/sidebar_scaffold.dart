import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_route/src/modules/home/widgets/sidebar.dart';

/// A scaffold with a sidebar.
class SidebarScaffold extends StatelessWidget {
  /// A scaffold with a sidebar.
  const SidebarScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(
            controller: Modular.get(),
          ),
          const Expanded(
            child: RouterOutlet(),
          ),
        ],
      ),
    );
  }
}
