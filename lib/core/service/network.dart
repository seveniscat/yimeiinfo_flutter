import 'package:dio/dio.dart';
import 'package:yimeiinfo_flutter/core/service/network_config.dart';

class RequestMethod {
  static const String get = 'get';
  static const String post = 'post';
}

class HttpNetwork {
  static final Dio dioClient = Dio(BaseOptions(
      baseUrl: ServiceConfig.BASE_URL, sendTimeout: ServiceConfig.TIMEOUT));

  static Future<T> request<T>(String path, {String method = 'get'}) async {
    // 拦截器
    // dioClient.interceptors.addAll(iterable)
    Interceptor interceptor =
        InterceptorsWrapper(onRequest: (options, handler) {
      print('开始请求');
      handler.next(options);
    }, onResponse: (options, handler) {
      print('请求成功');
      handler.next(options);
    }, onError: (error, handler) {
      print('请求失败');
      handler.next(error);
    });
    dioClient.interceptors.add(interceptor);

    final Options options = Options(method: method);
    final Response response = await dioClient.request(path, options: options);
    return response.data;
  }
}
