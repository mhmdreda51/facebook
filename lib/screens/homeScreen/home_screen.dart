import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/home_screen_app_bar.dart';
import 'components/home_screen_post_container.dart';
import 'components/home_screen_post_list.dart';
import 'components/home_screen_rooms.dart';
import 'components/home_screen_stories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeScreenAppBar(),
          HomeScreenPostContainer(),
          HomeScreenRooms(),
          HomeScreenStories(),
          HomeScreenPostList(),
        ],
      ),
    );
  }
}
