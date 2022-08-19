import 'package:tips_and_tricks_flutter/domain/model/authentication_model.dart';
import 'package:tips_and_tricks_flutter/domain/model/profile_model.dart';

abstract class AuthRepository {
  Future<AuthenticationModel> login(String userName, String passWord);

  Future logout();

  Future<ProfileModel> profile();
}