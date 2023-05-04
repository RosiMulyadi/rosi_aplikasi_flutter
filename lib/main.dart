import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rosi_aplikasi_flutter/data/detail_screen.dart';
import 'package:rosi_aplikasi_flutter/data/done_tourism_list.dart';
import 'package:rosi_aplikasi_flutter/data/main_screen.dart';
import 'package:rosi_aplikasi_flutter/model/tourism_place.dart';
import 'package:rosi_aplikasi_flutter/provider/done_tourism_provider.dart';
import 'package:rosi_aplikasi_flutter/ui/article_detail_page.dart';
import 'package:rosi_aplikasi_flutter/ui/article_list_page.dart';
import 'package:rosi_aplikasi_flutter/ui/article_web_view.dart';

import 'data/model/article.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ArticleListPage(),
        '/article_web': (context) =>
            ArticleWebView(
              ModalRoute.of(context)?.settings.arguments as String, url: 'url',
            ),
        '/article_detail': (context) =>
            ArticleDetailPage(
                ModalRoute.of(context)?.settings.arguments as Article
            ),
      },
    );
  }
}
