import 'package:bloc/bloc.dart';
import 'package:facebook/screens/homeScreen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());

  static NavBarCubit get(context) => BlocProvider.of(context);
//====================================================

  int selectedIndex = 0;
//====================================================

  void changeCurrentIndex(int index) {
    selectedIndex = index;
    emit(NavigationBarChangeState());
  }
//====================================================

  final List<Widget> screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  //====================================================

  final List<IconData> icons = const [
    Icons.home,
    Icons.ondemand_video,
    FontAwesomeIcons.userCircle,
    FontAwesomeIcons.users,
    FontAwesomeIcons.bell,
    Icons.menu,
  ];
}
