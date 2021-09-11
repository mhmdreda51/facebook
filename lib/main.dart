import 'package:facebook/constant/app_color.dart';
import 'package:facebook/screens/bottom_nav_bar/cubit/nav_bar_cubit.dart';
import 'package:facebook/screens/bottom_nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: MaterialApp(
        title: "Facebook Ui",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: AppColor.scaffold,
        ),
        home: NavBar(),
      ),
    );
  }
}
