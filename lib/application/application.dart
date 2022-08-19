import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tips_and_tricks_flutter/presentation/bloc/auth/auth_bloc.dart';
import 'package:tips_and_tricks_flutter/presentation/bloc/auth/auth_state.dart';
import 'package:tips_and_tricks_flutter/presentation/ui/home_page.dart';
import 'package:tips_and_tricks_flutter/presentation/ui/login_page.dart';

class Application extends StatefulWidget {
  static const path = 'Application';
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.when(authorized: (profile) {
              return HomePage();
            }, unAuthorized: () => LoginPage());
          }),
    );
  }
}
