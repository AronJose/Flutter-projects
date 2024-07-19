import 'dart:async';

import 'package:flutter/material.dart';
import 'app.dart';
import 'core/dependancy_injection/config/configure_injection.dart';
import 'core/routes/app_routes.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(
    MyApp(
      appRoutes: AppRoutes(),
    ),
  );
}

