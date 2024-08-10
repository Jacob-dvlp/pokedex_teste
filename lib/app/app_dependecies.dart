import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/presentations/presentation.dart';

class AppDependecies extends BaseDependencies {
  @override
  void dependencies(Dependencies d) {
    HomeDependecie().dependencies(d);
  }
}
