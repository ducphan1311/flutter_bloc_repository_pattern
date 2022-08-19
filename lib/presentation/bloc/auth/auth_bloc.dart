import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tips_and_tricks_flutter/data/repository_impl/auth_repository_impl.dart';
import 'package:tips_and_tricks_flutter/presentation/bloc/auth/auth_state.dart';

class AuthBloc extends Cubit<AuthState> {
  AuthBloc() : super(AuthState.unAuthorized());

  final authRepository = AuthRepositoryImpl();

  Future login(String userName, String passWord) async {
    final auth = await authRepository.login(userName, passWord);
    final profile = await authRepository.profile();
    emit(AuthState.authorized(profile));
  }

  void logout() {
    emit(AuthState.unAuthorized());
  }
}