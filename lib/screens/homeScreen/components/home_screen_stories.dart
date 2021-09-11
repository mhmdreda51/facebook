import 'package:facebook/data/data.dart';
import 'package:facebook/widgets/stories.dart';
import 'package:flutter/material.dart';

class HomeScreenStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
      sliver: SliverToBoxAdapter(
        child: Stories(
          currentUser: currentUser,
          stories: stories,
        ),
      ),
    );
  }
}
