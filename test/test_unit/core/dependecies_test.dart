import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex_test/core/core.dart';

class MockDependency extends Mock {}

void main() {
  group('Dependency Injection Tests', () {
    setUp(() {
      Dependencies.I.reset();
    });

    test('should register and retrieve a service', () {
      Dependencies.I.registerSingleton<MockDependency>(MockDependency());
      var service = Dependencies.I.get<MockDependency>();
      expect(service, isA<MockDependency>());
    });

    test('should check if a singleton is registered', () {
      Dependencies.I.registerSingleton<MockDependency>(MockDependency());

      bool isRegistered = Dependencies.I.isRegistered<MockDependency>();

      expect(isRegistered, true);
    });

    test('should unregister a service', () {
      Dependencies.I.registerSingleton<MockDependency>(MockDependency());
      Dependencies.I.unregister<MockDependency>();

      bool isRegistered = Dependencies.I.isRegistered<MockDependency>();

      expect(isRegistered, false);
    });
  });
}
