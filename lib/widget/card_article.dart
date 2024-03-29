import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rosi_aplikasi_flutter/data/main_screen.dart';
import 'package:rosi_aplikasi_flutter/provider/done_tourism_provider.dart';
import 'package:rosi_aplikasi_flutter/widget/card_article.dart';
import 'package:rosi_aplikasi_flutter/data/api/api_service.dart';
import 'package:rosi_aplikasi_flutter/data/model/article.dart';

import '../ui/article_detail_page.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({required this.article});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListTile(
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Hero(
          tag: article.urlToImage!,
          child: Image.network(
            article.urlToImage!,
            width: 100,
          ),
        ),
        title: Text(
          article.title,
        ),
        subtitle: Text(article.author!),
        onTap: () => Navigator.pushNamed(
          context,
          ArticleDetailPage.routeName,
          arguments: article,
        ),
      ),
    );
  }
}