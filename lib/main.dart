import 'package:flutter/material.dart';
import 'package:pokedex_test/app/app.dart';

import 'core/core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BaseAppRun(dependencies: AppDependecies(), child: const AppWidget()));
}
