import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook/models/post_model.dart';
import 'package:facebook/widgets/post_header.dart';
import 'package:flutter/material.dart';

import 'carousel_sliver_widget.dart';

class Postcontent extends StatelessWidget {
  final Post post;

  const Postcontent({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PostHeader(post: post),
        const SizedBox(height: 4.0),
        Text(post.caption),
        if (post.postList?.length == null &&
            post.postId != 4 &&
            post.imageUrl != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              imageUrl: post.imageUrl!,
            ),
          ),
        if (post.postList?.length != null && post.postId == 4)
          CarouselSliverWidget(
            post: post,
          )
      ],
    );
  }
}
