import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tips_and_tricks_flutter/presentation/bloc/auth/auth_bloc.dart';

class HomePage extends StatefulWidget {
  static const path = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Helu ${context.read<AuthBloc>().state.mapOrNull(authorized: (v) => v.profileModel.userName)}'),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: () {
              context.read<AuthBloc>().logout();
            }, child: Text('LogOut')),
          ],
        ),
      ),
    );
  }
}
