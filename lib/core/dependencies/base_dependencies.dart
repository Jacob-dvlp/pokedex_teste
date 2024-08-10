import 'package:get_it/get_it.dart';

typedef Dependencies = GetIt;

abstract class BaseDependencies {
  dependencies(Dependencies g) {}
}
