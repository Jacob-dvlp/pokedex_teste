import 'package:pokedex_test/core/core.dart';

import 'home_store.dart';

class HomeController {
  final HomeStore homeStore = Dependencies.I<HomeStore>();

  void incrementCounter() {
    homeStore.increment();
  }
}
