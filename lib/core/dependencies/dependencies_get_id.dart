import 'dart:async';

import 'package:get_it/get_it.dart';

final _getIt = GetIt.instance;

class Dependencies {
  static final Dependencies _instance = Dependencies._internal();

  factory Dependencies() {
    return _instance;
  }

  Dependencies._internal();

  static Dependencies get instance => _instance;
  static Dependencies get I => _instance;

  Future<void> allReady({Duration? timeout, bool ignorePendingAsyncCreation = false}) {
    return _getIt.allReady(timeout: timeout, ignorePendingAsyncCreation: ignorePendingAsyncCreation);
  }

  bool allReadySync([bool ignorePendingAsyncCreation = false]) {
    return _getIt.allReadySync(ignorePendingAsyncCreation);
  }

  T call<T extends Object>({String? instanceName, param1, param2, Type? type}) {
    return _getIt.call<T>(instanceName: instanceName, param1: param1, param2: param2, type: type);
  }

  String? get currentScopeName => _getIt.currentScopeName;

  Future<void> dropScope(String scopeName) {
    return _getIt.dropScope(scopeName);
  }

  void enableRegisteringMultipleInstancesOfOneType() {
    _getIt.allowReassignment = true;
  }

  T get<T extends Object>({param1, param2, String? instanceName, Type? type}) {
    return _getIt.get<T>(instanceName: instanceName, param1: param1, param2: param2, type: type);
  }

  Iterable<T> getAll<T extends Object>({param1, param2, Type? type}) {
    return _getIt.getAll<T>(param1: param1, param2: param2, type: type);
  }

  Future<Iterable<T>> getAllAsync<T extends Object>({param1, param2, Type? type}) {
    return _getIt.getAllAsync<T>(param1: param1, param2: param2, type: type);
  }

  Future<T> getAsync<T extends Object>({String? instanceName, param1, param2, Type? type}) {
    return _getIt.getAsync<T>(instanceName: instanceName, param1: param1, param2: param2, type: type);
  }

  bool hasScope(String scopeName) {
    return _getIt.hasScope(scopeName);
  }

  Future<void> isReady<T extends Object>({Object? instance, String? instanceName, Duration? timeout, Object? callee}) {
    return _getIt.isReady<T>(instance: instance, instanceName: instanceName, timeout: timeout, callee: callee);
  }

  bool isReadySync<T extends Object>({Object? instance, String? instanceName}) {
    return _getIt.isReadySync<T>(instance: instance, instanceName: instanceName);
  }

  bool isRegistered<T extends Object>({Object? instance, String? instanceName}) {
    return _getIt.isRegistered<T>(instance: instance, instanceName: instanceName);
  }

  void registerFactory<T extends Object>(FactoryFunc<T> factoryFunc, {String? instanceName}) {
    _getIt.registerFactory<T>(factoryFunc, instanceName: instanceName);
  }

  void registerFactoryAsync<T extends Object>(FactoryFuncAsync<T> factoryFunc, {String? instanceName}) {
    _getIt.registerFactoryAsync<T>(factoryFunc, instanceName: instanceName);
  }

  void registerFactoryParam<T extends Object, P1, P2>(FactoryFuncParam<T, P1, P2> factoryFunc, {String? instanceName}) {
    _getIt.registerFactoryParam<T, P1, P2>(factoryFunc, instanceName: instanceName);
  }

  void registerFactoryParamAsync<T extends Object, P1, P2>(FactoryFuncParamAsync<T, P1?, P2?> factoryFunc, {String? instanceName}) {
    _getIt.registerFactoryParamAsync<T, P1, P2>(factoryFunc, instanceName: instanceName);
  }

  void registerLazySingleton<T extends Object>(T Function() factoryFunc, {String? instanceName}) {
    _getIt.registerLazySingleton<T>(factoryFunc, instanceName: instanceName);
  }

  void registerLazySingletonAsync<T extends Object>(FactoryFuncAsync<T> factoryFunc, {String? instanceName, DisposingFunc<T>? dispose}) {
    _getIt.registerLazySingletonAsync<T>(factoryFunc, instanceName: instanceName, dispose: dispose);
  }

  T registerSingleton<T extends Object>(T instance, {String? instanceName, bool? signalsReady, DisposingFunc<T>? dispose}) {
    return _getIt.registerSingleton<T>(instance, instanceName: instanceName, signalsReady: signalsReady, dispose: dispose);
  }

  void registerSingletonAsync<T extends Object>(FactoryFuncAsync<T> factoryFunc, {String? instanceName, Iterable<Type>? dependsOn, bool? signalsReady, DisposingFunc<T>? dispose}) {
    _getIt.registerSingletonAsync<T>(factoryFunc, instanceName: instanceName, dependsOn: dependsOn, signalsReady: signalsReady, dispose: dispose);
  }

  void registerSingletonWithDependencies<T extends Object>(FactoryFunc<T> factoryFunc, {String? instanceName, Iterable<Type>? dependsOn, bool? signalsReady, DisposingFunc<T>? dispose}) {
    _getIt.registerSingletonWithDependencies<T>(factoryFunc, instanceName: instanceName, dependsOn: dependsOn, signalsReady: signalsReady, dispose: dispose);
  }

  Future<void> reset({bool dispose = true}) {
    return _getIt.reset(dispose: dispose);
  }

  FutureOr resetLazySingleton<T extends Object>({T? instance, String? instanceName, FutureOr Function(T p1)? disposingFunction}) {
    return _getIt.resetLazySingleton<T>(instance: instance, instanceName: instanceName, disposingFunction: disposingFunction);
  }

  Future<void> resetScope({bool dispose = true}) {
    return _getIt.resetScope(dispose: dispose);
  }

  void signalReady(Object? instance) {
    _getIt.signalReady(instance);
  }

  FutureOr unregister<T extends Object>({Object? instance, String? instanceName, FutureOr Function(T p1)? disposingFunction}) {
    return _getIt.unregister<T>(instance: instance, instanceName: instanceName, disposingFunction: disposingFunction);
  }
}
