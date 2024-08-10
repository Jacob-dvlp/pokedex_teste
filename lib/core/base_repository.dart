import 'package:flutter/foundation.dart';
import 'package:pokedex_test/core/result_state.dart';

import 'error/base_failure.dart';
import 'error/exceptions.dart';

abstract class BaseRepository {
  Future<ResultState<BaseFailure, E>> tryExecute<E>(
    Future<E> Function() exec, {
    BaseFailure Function(DataPersistenceException e)? onDataPersistenceException,
    BaseFailure Function(Exception e)? onOtherException,
  }) async {
    try {
      E result = await exec();
      return IsResult(result);
    } on DataPersistenceException catch (e, stackTrace) {
      if (onDataPersistenceException != null) return IsError(onDataPersistenceException(e));
      _logErrorResponse(IsError(DataPersistenceFailure(stackTrace: stackTrace)));
      return IsError(DataPersistenceFailure(stackTrace: stackTrace));
    } on Exception catch (e, stackTrace) {
      if (onOtherException != null) return IsError(onOtherException(e));
      debugPrint('[ERROR RESPONSE REPOSITORY]: $e');
      return IsError(UnknownFailure(stackTrace: stackTrace));
    }
  }

  void _logErrorResponse(IsError response) {
    debugPrint('[ERROR RESPONSE REPOSITORY]: ${response.value.message}');
  }
}
