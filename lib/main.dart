import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Screens/Task 8.1/Provider/photoProviderr.dart';
import 'Utils/routes.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: MyRoutes.myRoutes,
    );
  }
}