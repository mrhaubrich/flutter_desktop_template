import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_route/src/modules/home/pages/home_page.dart';
import 'package:nested_route/src/modules/home/widgets/miolo.dart';
import 'package:nested_route/src/modules/home/widgets/sidebar.dart';
import 'package:sidebarx/sidebarx.dart';

/// The Home module of the application.
class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.add<SidebarXController>(MySideBarController.new);
  }

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
