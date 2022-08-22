import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tips_and_tricks_flutter/application/services/auth_service.dart';
import 'package:tips_and_tricks_flutter/data/data_sources/local/auth_local_service.dart';
import 'package:tips_and_tricks_flutter/data/data_sources/mock/auth_mock_service.dart';
import 'package:tips_and_tricks_flutter/data/data_sources/remote/auth_api_service.dart';
import 'package:tips_and_tricks_flutter/presentation/blocs/auth/auth_state.dart';

class AuthBloc extends Cubit<AuthState> {
  AuthBloc() : super(AuthState.unAuthorized());

  final authService = AuthService(
    AuthMockService(),
    AuthLocalService(),
    AuthApiService(),
  );

  Future login(String userName, String passWord) async {
    final auth = await authService.login(userName, passWord);
    final profile = await authService.profile();
    emit(AuthState.authorized(profile));
  }

  void logout() {
    emit(AuthState.unAuthorized());
  }
}
