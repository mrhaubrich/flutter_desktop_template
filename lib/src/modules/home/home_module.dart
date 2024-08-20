import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_route/src/modules/home/pages/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    Modular.setInitialRoute('/dashboard');
    r.child(
      '/',
      child: (_) => const HomePage(),
      children: [
        ChildRoute(
          '/dashboard',
          child: (context) => ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('Dashboard'),
            ),
          ),
        ),
        ChildRoute(
          '/shop',
          child: (context) => ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('Shop'),
            ),
          ),
          children: [
            ChildRoute(
              '/cart',
              child: (context) => ColoredBox(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: const Center(
                  child: Text('Cart'),
                ),
              ),
            ),
          ],
        ),
        ChildRoute(
          '/ice-cream',
          child: (context) => ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('Ice-Cream'),
            ),
          ),
        ),
        ChildRoute(
          '/search',
          child: (context) => ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('Search'),
            ),
          ),
        ),
      ],
      transition: TransitionType.scale,
    );
  }
}
