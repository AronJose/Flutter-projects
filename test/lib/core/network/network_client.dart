import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'network_exceptions.dart';

/// If you have to pass token with api requests then use,[getWithToken],[postWithToken],
/// [putWithToken],[patchWithToken],[deleteWithToken], methods, if you are not using any token then
/// you can use [getWithoutToken] and [postWithoutToken] methods. 
/// You can implement Put,Patch,delete without token  methods as per your needs.
/// You can modify this code as per your needs.

@lazySingleton
@injectable
class NetworkClient {
  final Dio _dio;
  NetworkClient(this._dio);

  ///If you are storing token in SharedPreferences or any other storage,
  ///then write code for retrieving token and assign to [token]
  String? token;
  //GET request with token
  Future<dynamic> getWithToken(
      {required String path, dynamic data, dynamic queryParameters}) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
      "authorization": "Bearer $token"
    };
    try {
      final response =
          await _dio.get(path, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      throw CustomException.fromDioException(e);
    }
  }

  //POST request with token
  Future<dynamic> postWithToken({required String path, dynamic data}) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
      "authorization": "Bearer $token"
    };
    try {
      final response = await _dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      throw CustomException.fromDioException(e);
    } catch (e) {
      throw CustomException.otherException(e.toString());
    }
  }

  //PUT request with token
  Future<dynamic> putWithToken({required String path, dynamic data}) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
      "authorization": "Bearer $token"
    };
    try {
      final response = await _dio.put(path, data: data);
      return response;
    } on DioException catch (e) {
      throw CustomException.fromDioException(e);
    } catch (e) {
      throw CustomException.otherException(e.toString());
    }
  }

  //PATCH request with token
  Future<dynamic> patchWithToken({required String path, dynamic data}) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
      "authorization": "Bearer $token"
    };
    try {
      final response = await _dio.patch(path, data: data);
      return response;
    } on DioException catch (e) {
      throw CustomException.fromDioException(e);
    } catch (e) {
      throw CustomException.otherException(e.toString());
    }
  }

  //DELETE request with token
  Future<dynamic> deleteWithToken({required String path, dynamic data}) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
      "authorization": "Bearer $token"
    };
    try {
      final response = await _dio.delete(path, data: data);
      return response;
    } on DioException catch (e) {
      throw CustomException.fromDioException(e);
    } catch (e) {
      throw CustomException.otherException(e.toString());
    }
  }

  //GET request without token
  Future<dynamic> getWithoutToken(
      {required String path, dynamic data, dynamic queryParameters}) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
    };
    try {
      final response =
          await _dio.get(path, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      throw CustomException.fromDioException(e);
    } catch (e) {
      throw CustomException.otherException(e.toString());
    }
  }

  //POST request without token
  Future<dynamic> postWithoutToken({required String path, dynamic data}) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
    };
    try {
      final response = await _dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      throw CustomException.fromDioException(e);
    } catch (e) {
      throw CustomException.otherException(e.toString());
    }
  }
}

