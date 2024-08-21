import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_route/src/modules/home/widgets/miolo.dart';

/// The Dashboard module of the application.
class DashboardModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (_) => const Miolo(
        child: Center(
          child: Text('Dashboard'),
        ),
      ),
    );
  }
}
