// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Oauth _$OauthFromJson(Map<String, dynamic> json) {
  return Oauth()
    ..access_token = json['access_token'] as String
    ..token_type = json['token_type'] as String
    ..expires_in = json['expires_in'] as num
    ..refresh_token = json['refresh_token'] as String
    ..scope = json['scope'] as String
    ..created_at = json['created_at'] as num;
}

Map<String, dynamic> _$OauthToJson(Oauth instance) => <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'expires_in': instance.expires_in,
      'refresh_token': instance.refresh_token,
      'scope': instance.scope,
      'created_at': instance.created_at
    };
