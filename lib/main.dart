import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop_template/src/app_widget.dart';
import 'package:flutter_desktop_template/src/modules/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:menubar/menubar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setApplicationMenu([]);

  doWhenWindowReady(() {
    const initialSize = Size(1280, 720);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.title = 'Flutter Desktop Template';
    appWindow.show();
  });

  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
