import 'package:flutter/material.dart';
import '../core/setup/app_config.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppConfig.shared.flavor.name)),
      body: Center(child: Text('Hello ${AppConfig.shared.homePageTitle}')),
    );
  }
}
