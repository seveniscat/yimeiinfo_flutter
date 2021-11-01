import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:yimeiinfo_flutter/core/service/service.dart';
import 'package:yimeiinfo_flutter/shared/models/news_item_model.dart';

class HomePage extends StatelessWidget {
  static const ROUTE_NAME = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: HomePageContent(),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
