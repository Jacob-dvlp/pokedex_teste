import 'package:flutter/material.dart';
import 'package:pokedex_test/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppDependecies.instancia.dependecies();
  runApp(const AppWidget());
}
