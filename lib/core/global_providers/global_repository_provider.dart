import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/features/auth/repositories/auth_repository.dart';

class GlobalRepositoryProvider extends StatelessWidget {
  const GlobalRepositoryProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => AuthRepository(context.read())),
      ],
      child: child,
    );
  }
}
