import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:main/core/global_providers/global_providers.dart';
import 'package:main/core/router/routes.dart';
import 'package:main/shared/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await _setupFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalProviders(
      child: MaterialApp.router(theme: AppTheme.theme, routerConfig: router),
    );
  }
}

Future<void> _setupFirebase() async {
  await Firebase.initializeApp();
}
