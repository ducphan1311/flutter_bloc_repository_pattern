import 'package:json_annotation/json_annotation.dart';
import 'package:tips_and_tricks_flutter/domain/model/authentication_model.dart';
part 'authentication_dto.g.dart';

@JsonSerializable()
class AuthenticationDto extends AuthenticationModel{

  factory AuthenticationDto.fromJson(Map<String, dynamic> json) => _$AuthenticationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationDtoToJson(this);

  @override
  String accessToken;

  @override
  String refreshToken;

  AuthenticationDto(this.accessToken, this.refreshToken);
}