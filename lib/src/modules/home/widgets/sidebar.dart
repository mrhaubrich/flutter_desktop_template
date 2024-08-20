import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sidebarx/sidebarx.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);

class _SidebarState extends State<Sidebar> {
  late final SidebarXController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SidebarXController(
      selectedIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: const TextStyle(color: Colors.white),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(10),
      ),
      footerDivider: const Divider(
        color: Colors.white,
        thickness: 0.5,
      ),
      headerBuilder: (context, extended) {
        return const DrawerHeader(
          child: AutoSizeText(
            'Nested Route',
            style: TextStyle(color: white),
            softWrap: false,
            textScaleFactor: 2,
            maxFontSize: 65,
            minFontSize: 12,
            maxLines: 1,
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.dashboard,
          label: 'Dashboard',
          onTap: () => Modular.to.navigate('/dashboard'),
        ),
        SidebarXItem(
          icon: Icons.shopping_cart,
          label: 'Shop',
          onTap: () => Modular.to.navigate('/shop'),
        ),
        SidebarXItem(
          icon: Icons.icecream,
          label: 'Ice-Cream',
          onTap: () => Modular.to.navigate('/ice-cream'),
        ),
        SidebarXItem(
          icon: Icons.search,
          label: 'Search',
          onTap: () => Modular.to.navigate('/search'),
        ),
      ],
    );
  }
}
