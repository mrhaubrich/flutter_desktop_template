import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_desktop_template/src/app_widget.dart';
import 'package:flutter_desktop_template/src/modules/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:menubar/menubar.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeWindow();

  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}

Future<void> _initializeWindow() async {
  await Window.initialize();
  const initialSize = Size(1280, 720);
  final futures = [
    windowManager.setMinimumSize(initialSize),
    windowManager.setSize(initialSize),
    windowManager.setAsFrameless(),
    windowManager.setTitle('Flutter Desktop Template'),
    if (Platform.isWindows) windowManager.setHasShadow(false),
    setApplicationMenu([]),
    Window.setEffect(effect: WindowEffect.transparent),
  ];

  await Future.wait(futures);
}
