import 'package:pokedex_test/core/error/base_failure.dart';
import 'package:pokedex_test/core/result_state.dart';

abstract class BaseUsecase<Params, Result> {
  Future<ResultState<BaseFailure, Result>> call(Params params);
}
