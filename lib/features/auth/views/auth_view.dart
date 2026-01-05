import 'package:flutter/material.dart';

class AuthView extends StatefulWidget {
  static String routeName = '/auth';

  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Placeholder());
  }
}
