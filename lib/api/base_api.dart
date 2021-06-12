//import 'dart:io';

import 'package:dio/dio.dart';

class BaseApi {
  late Dio dio;

  BaseApi() {
    dio = Dio();
  }

  Future post(url, {data}) async {
    try {
      Response response = await dio.post(url, data: data);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.requestOptions.path);
        print(e.requestOptions.headers);
        print(e.requestOptions.data);
        print(e.requestOptions.headers);
        print(e.requestOptions.receiveTimeout);
        print(e.requestOptions.baseUrl);
        print(e.requestOptions.path);
        return e.response;
      } else {
        // print(e.response.statusCode);
        print(e.requestOptions.path);
        print(e.message);
        print(e.response);
        return null;
      }
    }
  }

  Future put(url, {data}) async {
    try {
      Response response = await dio.put(url, data: data);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.requestOptions.path);
        print(e.requestOptions.headers);
        print(e.requestOptions.data);
        print(e.requestOptions.headers);
        print(e.requestOptions.receiveTimeout);
        print(e.requestOptions.baseUrl);
        print(e.requestOptions.path);
      } else {
        print(e.requestOptions.path);
        print(e.message);
      }
    }
  }

  Future delete(url, {data}) async {
    try {
      Response response = await dio.delete(url, data: data);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.requestOptions.path);
        print(e.requestOptions.headers);
        print(e.requestOptions.data);
        print(e.requestOptions.headers);
        print(e.requestOptions.receiveTimeout);
        print(e.requestOptions.baseUrl);
        print(e.requestOptions.path);
      } else {
        print(e.requestOptions.path);
        print(e.message);
      }
    }
  }

  Future get(url, {queryParameters}) async {
    try {
      Response response = await dio.get(url, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.requestOptions.path);
        print(e.requestOptions.headers);
        print(e.requestOptions.data);
        print(e.requestOptions.headers);
        print(e.requestOptions.receiveTimeout);
        return e.response;
      } else {
        return null;
      }
    }
  }
}
