// baseurl
// https://sns-staging.yimei180.com

// banner广告图
// https://sns-staging.yimei180.com/api/v2/advertisingspace/advertising?space=3

// 金刚区
// https://sns-staging.yimei180.com/api/v4/index/kingkong

// 今日播报
// https://sns-staging.yimei180.com/api/v2/home/page/voice

// 易煤头条
// https://sns-staging.yimei180.com/api/v4/index/hot-top

// 热门资讯 ["limit": 15, "page": 1]
// https://sns-staging.yimei180.com/api/v4/index/hot-top

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
    final Interceptor interceptor = InterceptorsWrapper(
        onRequest: (options, handler) {
          print('开始请求');
        },
        onResponse: (options, handler) {
          print('请求成功');
        },
        onError: (error, handler) {
          print('请求失败');
        });
    dioClient.interceptors.add(interceptor);

    final Options options = Options(method: method);
    final Response response = await dioClient.request(path, options: options);
    return response.data;
  }
}
