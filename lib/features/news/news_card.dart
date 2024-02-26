import 'package:auto_route/auto_route.dart';
import 'package:basketball/features/news/screens/news.dart';
import 'package:basketball/features/shared/error_image_widget.dart';
import 'package:basketball/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class NewsCard extends ConsumerWidget {
  final int index;
  final News news;

  const NewsCard({Key? key, required this.news, required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () =>
          context.router.push(NewsDetailsRoute(news: news, index: index)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Hero(
                    tag: 'news$index',
                    child: Material(
                      color: Colors.transparent,
                      child: Text(news.title,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
            )
          ],
        ),
      ),
    );
  }
}
