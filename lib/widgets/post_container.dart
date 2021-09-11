import 'package:facebook/models/post_model.dart';
import 'package:facebook/screens/homeScreen/components/post_contant.dart';
import 'package:facebook/widgets/post_state.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  PostContainer({
    required this.post,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Postcontent(
                post: post,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: PostStats(post: post),
          ),
        ],
      ),
    );
  }
}
