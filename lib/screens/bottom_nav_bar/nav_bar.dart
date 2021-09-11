import 'package:facebook/widgets/custom_tap_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/nav_bar_cubit.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        var navBarCubit = NavBarCubit.get(context);
        return DefaultTabController(
          length: navBarCubit.icons.length,
          child: Scaffold(
              body: IndexedStack(
                index: navBarCubit.selectedIndex,
                children: navBarCubit.screens,
              ),
              bottomNavigationBar: Container(
                padding: const EdgeInsets.only(bottom: 12.0),
                color: Colors.white,
                child: CustomTabBar(
                    icons: navBarCubit.icons,
                    selectedIndex: navBarCubit.selectedIndex,
                    onTap: navBarCubit.changeCurrentIndex),
              )),
        );
      },
    );
  }
}
