import 'package:facebook/constant/app_color.dart';
import 'package:facebook/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeScreenAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      title: Text(
        "facebook",
        style: TextStyle(
          color: AppColor.facebookBlue,
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
      ),
      centerTitle: false,
      floating: true,
      // pinned: true,
      actions: [
        CircleButton(
          iconSize: 30,
          icon: Icons.search,
          onPressed: () {},
        ),
        CircleButton(
          onPressed: () {},
          icon: LineAwesomeIcons.facebook_messenger,
          iconSize: 30,
        ),
      ],
    );
  }
}
