import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main/core/models/result.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({@Default(Result<void>.empty()) Result<void> data}) =
      _DashboardState;
}
