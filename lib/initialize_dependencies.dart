import 'package:get_it/get_it.dart';
import 'package:tips_and_tricks_flutter/presentation/blocs/auth/auth_bloc.dart';

Future initializeDependencies() async {
  GetIt.instance.registerSingleton(AuthBloc());
}