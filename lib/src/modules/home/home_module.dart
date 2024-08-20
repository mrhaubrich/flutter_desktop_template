import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_route/src/modules/home/pages/home_page.dart';
import 'package:nested_route/src/modules/home/widgets/miolo.dart';

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
          child: (_) => const Miolo(
            child: Center(
              child: Text('Dashboard'),
            ),
          ),
        ),
        ChildRoute(
          '/shop',
          child: (_) => const Miolo(
            child: Center(
              child: Text('Shop'),
            ),
          ),
          children: [
            ChildRoute(
              '/cart',
              child: (_) => const Miolo(
                child: Center(
                  child: Text('Cart'),
                ),
              ),
            ),
          ],
        ),
        ChildRoute(
          '/ice-cream',
          child: (_) => const Miolo(
            child: Center(
              child: Text('Ice-Cream'),
            ),
          ),
        ),
        ChildRoute(
          '/search',
          child: (_) => const Miolo(
            child: Center(
              child: Text('Search'),
            ),
          ),
        ),
      ],
      transition: TransitionType.fadeIn,
    );
  }
}
