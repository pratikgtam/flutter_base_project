import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/features/onboarding/cubits/onboarding_state.dart';
import 'package:main/features/onboarding/repositories/onboarding_repository.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this.repository) : super(OnboardingState());

  final OnboardingRepository repository;

  Future<void> init() async {}
}
