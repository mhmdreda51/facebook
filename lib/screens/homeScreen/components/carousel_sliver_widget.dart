import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook/models/post_model.dart';
import 'package:flutter/material.dart';

class CarouselSliverWidget extends StatelessWidget {
  final Post post;

  const CarouselSliverWidget({required this.post});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 350,
        aspectRatio: 15 / 8,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: post.postList?.length,
      itemBuilder: (BuildContext context, int itemIndex, _) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: CachedNetworkImage(
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
          imageUrl: post.postList?[itemIndex],
        ),
      ),
    );
  }
}
