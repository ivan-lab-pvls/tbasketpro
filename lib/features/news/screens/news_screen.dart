import 'package:auto_route/auto_route.dart';
import 'package:basketball/features/news/news_card.dart';
import 'package:basketball/features/news/screens/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

late StateProvider<String> newsItemUrlProvider;

@RoutePage()
class NewsScreen extends ConsumerStatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends ConsumerState<NewsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Explore',
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewsCard(news: newsList[index], index: index);
          },
        ),
      ),
    );
  }
}
