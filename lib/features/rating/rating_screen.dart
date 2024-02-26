import 'package:auto_route/auto_route.dart';
import 'package:basketball/features/rating/pages/players_page.dart';
import 'package:basketball/features/rating/pages/teams_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/providers/players_provider.dart';
import '../../api/providers/teams_provider.dart';

late PageController _pageController;
late List playerList;
late List teamList;

@RoutePage()
class RatingScreen extends ConsumerStatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends ConsumerState<RatingScreen> {
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final teams = ref.watch(teamsProvider);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: const Text(
            'Rating',
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              flex: 10,
              child: PageView(
                controller: _pageController,
                children: [
                  TeamsPage(teams: teams),
                ],
              ),
            ),
          ],
        )));
  }
}
