import 'dart:io' show HttpStatus;
import 'package:country_listings/utils/res/data_state.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

abstract class BaseApiRepository {
  Future<DataState<T>> getStateOf<T>({required Future<HttpResponse<T>> Function() request}) async {
    try {
      final httpResponse = await request();
      if (httpResponse.response.statusCode == HttpStatus.ok ||
          httpResponse.response.statusCode == HttpStatus.accepted ||
          httpResponse.response.statusCode == HttpStatus.created) {
        return DataSuccess(isLoading: false, data: httpResponse.data);
      } else {
        throw DioException(
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
        );
      }
    } on DioException catch (error) {
      return DataFailed(isLoading: false, error: error);
    } catch (error) {
      return DataFailed(isLoading: false, error: Exception(error.toString()));
    }
  }
}
