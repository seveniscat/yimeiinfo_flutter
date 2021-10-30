class NewsItem {
  String author = '';
  Category? category;
  String createdAt = '';
  String from = '';
  int hits = 0;
  int id = 0;
  int? imageId;
  bool isNeedPayment = false;
  String publishAt = '';
  String title = '';
  int type = 0;

  NewsItem(
      {required this.author,
      this.category,
      required this.createdAt,
      required this.from,
      required this.hits,
      required this.id,
      this.imageId,
      required this.isNeedPayment,
      required this.publishAt,
      required this.title,
      required this.type});

  NewsItem.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    createdAt = json['created_at'];
    from = json['from'];
    hits = json['hits'];
    id = json['id'];
    imageId = json['image_id'];
    isNeedPayment = json['is_need_payment'];
    publishAt = json['publish_at'];
    title = json['title'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt;
    data['from'] = from;
    data['hits'] = hits;
    data['id'] = id;
    data['image_id'] = imageId;
    data['is_need_payment'] = isNeedPayment;
    data['publish_at'] = publishAt;
    data['title'] = title;
    data['type'] = type;
    return data;
  }
}

class Category {
  int id = 0;
  String name = '';
  int rank = 0;
  int type = 0;
  PaySetting? paySetting;

  Category(
      {required this.id,
      required this.name,
      required this.rank,
      required this.type,
      this.paySetting});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    rank = json['rank'];
    type = json['type'];
    paySetting = json['pay_setting'] != null
        ? PaySetting.fromJson(json['pay_setting'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['rank'] = rank;
    data['type'] = type;
    if (paySetting != null) {
      data['pay_setting'] = paySetting!.toJson();
    }
    return data;
  }
}

class PaySetting {
  int id = 0;
  String type = '';

  PaySetting({required this.id, required this.type});

  PaySetting.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    return data;
  }
}
