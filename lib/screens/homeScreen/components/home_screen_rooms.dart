import 'package:facebook/data/data.dart';
import 'package:facebook/widgets/rooms.dart';
import 'package:flutter/material.dart';

class HomeScreenRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
      sliver: SliverToBoxAdapter(
        child: Rooms(onlineUsers: onlineUsers),
      ),
    );
  }
}
