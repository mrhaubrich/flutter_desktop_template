import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_route/src/modules/home/widgets/sidebar.dart';
import 'package:sidebarx/sidebarx.dart';

class SidebarScaffold extends StatefulWidget {
  const SidebarScaffold({super.key});

  @override
  State<SidebarScaffold> createState() => _SidebarScaffoldState();
}

class _SidebarScaffoldState extends State<SidebarScaffold> {
  late final SidebarXController controller;

  @override
  void initState() {
    super.initState();
    controller = SidebarXController(
      selectedIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(
            controller: controller,
          ),
          const Expanded(
            child: RouterOutlet(),
          ),
        ],
      ),
    );
  }
}
