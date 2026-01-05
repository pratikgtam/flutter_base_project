import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main/core/models/result.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({@Default(Result<void>.empty()) Result<void> data}) =
      _AuthState;
}
