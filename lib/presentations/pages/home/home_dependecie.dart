import 'package:pokedex_test/core/core.dart';

import 'home.dart';

class HomeDependecie extends BaseDependencies {
  @override
  void dependencies(Dependencies d) {
    d.registerLazySingleton(() => HomeStore());
    d.registerLazySingleton(() => HomeController.new);
  }
}
