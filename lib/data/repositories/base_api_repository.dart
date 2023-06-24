import 'package:country_listings/utils/res/data_state.dart';
import 'package:dio/dio.dart';

abstract class BaseApiRepository {
  Future<DataState<T>> getStateOf<T>({required Future<T> Function() request}) async {
    try {
      final response = await request();
      return DataSuccess(isLoading: false, data: response);
    } on DioException catch (error) {
      return DataFailed(isLoading: false, error: error);
    } catch (error) {
      return DataFailed(isLoading: false, error: Exception(error.toString()));
    }
  }
}
