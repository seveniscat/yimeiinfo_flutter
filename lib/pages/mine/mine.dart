import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  static const ROUTE_NAME = 'mine';
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mine'),
      ),
      body: MinePageContent(),
    );
  }
}

class MinePageContent extends StatelessWidget {
  const MinePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
