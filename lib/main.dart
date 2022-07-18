import '../cubit/app_cubits.dart';
import 'package:flutter/material.dart';
import '../services/data_services.dart';
import '../cubit/app_cubit_logics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import '../pages/welcome_page.dart';
//import '../pages/navpages/main_page.dart';
//import 'package:travel/pages/detail_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCutbits>(
        create: (context) => AppCutbits(
          data: DataServices(),
        ),
        child: const AppCubitLogics(),
      ),
    );
  }
}
