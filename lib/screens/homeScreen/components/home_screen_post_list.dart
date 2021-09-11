import 'package:facebook/data/data.dart';
import 'package:facebook/models/post_model.dart';
import 'package:facebook/widgets/post_container.dart';
import 'package:flutter/material.dart';

class HomeScreenPostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          late Post post = posts[index];
          return PostContainer(post: post);
        },
        childCount: posts.length,
      ),
    );
  }
}
