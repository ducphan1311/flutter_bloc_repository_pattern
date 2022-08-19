import 'package:tips_and_tricks_flutter/data/dto/authentication_dto.dart';
import 'package:tips_and_tricks_flutter/data/dto/profile_dto.dart';
import 'package:tips_and_tricks_flutter/domain/model/authentication_model.dart';
import 'package:tips_and_tricks_flutter/domain/model/profile_model.dart';

class AuthMockService {
  Future<AuthenticationModel> login(String userName, String passWord) async {
    return AuthenticationDto('accessToken', 'refreshToken');
  }

  Future logout() async {
  }

  Future<ProfileModel> profile() async {
    return ProfileDto('duc');
  }

}