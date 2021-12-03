import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_logic.dart';
import 'package:travel_app/detail_page.dart';
import 'package:travel_app/pages/Navpages/bar_item_page.dart';
import 'package:travel_app/pages/Navpages/main_page.dart';
import 'package:travel_app/pages/Navpages/search_page.dart';
import 'package:travel_app/pages/welcome.dart';
import 'package:travel_app/cubit/app_cubit.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(),
        child: AppCubitLogic(),
      ),
    );
  }
}
