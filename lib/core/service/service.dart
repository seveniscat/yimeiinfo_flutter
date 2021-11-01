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

import 'package:yimeiinfo_flutter/core/service/network.dart';
import 'package:yimeiinfo_flutter/shared/models/news_item_model.dart';

class YMService {
  static Future<List<NewsItem>> requestHotTopData() async {
    final responseData = await HttpNetwork.request('/v4/index/hot-top');
    final dataJson = responseData['data'];
    print(responseData);

    List<NewsItem> items = [];
    for (var json in dataJson) {
      items.add(NewsItem.fromJson(json));
    }
    return items;
  }
}
