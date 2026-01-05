import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  static String routeName = '/onboarding';
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Onboarding View')),
      body: Placeholder(),
    );
  }
}
