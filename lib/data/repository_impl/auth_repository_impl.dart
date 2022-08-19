import 'package:tips_and_tricks_flutter/data/datasource/mock/auth_mock_service.dart';
import 'package:tips_and_tricks_flutter/domain/model/authentication_model.dart';
import 'package:tips_and_tricks_flutter/domain/model/profile_model.dart';
import 'package:tips_and_tricks_flutter/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  var authMockService = AuthMockService();

  @override
  Future<AuthenticationModel> login(String userName, String passWord) {
    return authMockService.login(userName, passWord);
  }

  @override
  Future logout() {
    return authMockService.logout();
  }

  @override
  Future<ProfileModel> profile() {
    return authMockService.profile();
  }
  
}