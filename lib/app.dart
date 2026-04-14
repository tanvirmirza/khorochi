import 'package:flutter/material.dart';
import 'package:khorochi/core/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App metadata
      title: 'Khorochai',
      debugShowCheckedModeBanner: false,
        // Theme configuration
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.light,

      
    );
  }
}
