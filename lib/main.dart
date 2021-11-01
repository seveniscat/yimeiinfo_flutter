import 'package:flutter/material.dart';
import 'package:yimeiinfo_flutter/core/service/service.dart';
import 'package:yimeiinfo_flutter/pages/mainscreen.dart';
import 'package:yimeiinfo_flutter/core/my_router.dart';

main(List<String> args) {
  YMService.requestHotTopData();

  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: YMRouter.routes,
      initialRoute: YMRouter.initialRoute,
      onUnknownRoute: YMRouter.onUnknownRoute,
      onGenerateRoute: YMRouter.onGenerateRoute,

      // theme: ,
      // darkTheme: ThemeData,
      // locale: ,
    );
  }
}
