import 'package:facebook/data/data.dart';
import 'package:facebook/widgets/creat_post_continar.dart';
import 'package:flutter/material.dart';

class HomeScreenPostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CreatePostContainer(currentUser: currentUser),
    );
  }
}
