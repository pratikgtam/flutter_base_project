import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:main/features/auth/views/auth_view.dart';
import 'package:main/features/dashboard/views/dashboard_view.dart';
import 'package:main/features/onboarding/views/onboarding_view.dart';

GoRouter router = GoRouter(
  errorBuilder: (context, state) {
    return FirebaseAuth.instance.currentUser == null
        ? const AuthView()
        : const DashboardView();
  },

  initialLocation: kDebugMode
      ? '/onboarding'
      : FirebaseAuth.instance.currentUser == null
      ? '/onboarding'
      : '/home',
  routes: [
    GoRoute(
      path: '/onboarding',
      name: OnboardingView.routeName,
      builder: (context, state) => const OnboardingView(),
    ),

    GoRoute(
      path: '/auth',
      name: AuthView.routeName,
      builder: (context, state) => const AuthView(),
    ),
  ],
);
