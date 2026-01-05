import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/features/auth/cubits/auth_state.dart';
import 'package:main/features/auth/repositories/auth_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.repository) : super(AuthState());

  final AuthRepository repository;

  Future<void> init() async {}
}
