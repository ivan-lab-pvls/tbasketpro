import 'package:auto_route/auto_route.dart';
import 'package:basketball/features/news/screens/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/error_image_widget.dart';

@RoutePage()
class NewsDetailsScreen extends StatefulWidget {
  final News news;
  final int index;
  const NewsDetailsScreen({Key? key, required this.news, required this.index})
      : super(key: key);

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Details',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'news${widget.index}',
                    child: Material(
                      color: Colors.transparent,
                      child: Text(widget.news.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20.sp)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(widget.news.content,
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Text(
                    widget.news.content,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
