import 'package:facebook/models/stoys_model.dart';
import 'package:facebook/models/user_model.dart';
import 'package:facebook/widgets/responsive.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  late User currentUser;
  late List<Story> stories;

  Stories({
    required this.currentUser,
    required this.stories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Responsive.isDesktop(context) ? Colors.transparent : Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: StoryCard(
                story: stories[index],
                isAddStory: true,
                currentUser: currentUser,
              ),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: StoryCard(
              story: story,
              currentUser: currentUser,
            ),
          );
        },
      ),
    );
  }
}
