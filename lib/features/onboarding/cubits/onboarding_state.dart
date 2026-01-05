import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main/core/models/result.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  factory OnboardingState({@Default(Result<void>.empty()) Result<void> data}) =
      _OnboardingState;
}
