import '../cubit/app_cubits.dart';
import '../pages/detail_page.dart';
import '../pages/welcome_page.dart';
import '../cubit/app_cubit_state.dart';
import 'package:flutter/material.dart';
import '../pages/navpages/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCutbits, CubitStates>(
        builder: (context, state) {
          if (state is DetailState) {
            return const DetailPage();
          }
          if (state is WelcomeState) {
            return const WelcomePage();
          }
          if (state is LoadedState) {
            return const MainPage();
          }
          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
