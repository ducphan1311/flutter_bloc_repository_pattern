import 'package:tips_and_tricks_flutter/data/repositories/auth/auth_api_repository.dart';
import 'package:tips_and_tricks_flutter/data/repositories/auth/auth_local_reposirory.dart';
import 'package:tips_and_tricks_flutter/data/repositories/auth/auth_mock_repository.dart';
import 'package:tips_and_tricks_flutter/domain/models/authentication_model.dart';
import 'package:tips_and_tricks_flutter/domain/models/profile_model.dart';

class AuthService {
  AuthService(
    this.authMockRepository,
    this.authLocalRepository,
    this.authApiRepository,
  );

  final AuthMockRepository authMockRepository;
  final AuthLocalRepository authLocalRepository;
  final AuthApiRepository authApiRepository;

  Future<AuthenticationModel> login(String userName, String passWord) {
    return authMockRepository.login(userName, passWord);
  }

  Future logout() {
    return authMockRepository.logout();
  }

  Future<ProfileModel> profile() {
    return authMockRepository.profile();
  }
}
