import 'package:tips_and_tricks_flutter/data/datasource/local/auth_local_service.dart';
import 'package:tips_and_tricks_flutter/data/datasource/mock/auth_mock_service.dart';
import 'package:tips_and_tricks_flutter/data/datasource/remote/auth_api_service.dart';

class AuthService {
  final AuthApiService authApiService;
  final AuthMockService authMockService;
  final AuthLocalService authLocalService;

  AuthService(this.authApiService, this.authMockService, this.authLocalService);
}