import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shushii_restarount_app/src/features/home/model/categories_data.dart';
import 'package:shushii_restarount_app/src/features/home/model/sushi_data.dart';
import 'package:shushii_restarount_app/src/features/landing_page/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GetData(),
        ),
        ChangeNotifierProvider(
          create: (context) => SushiData(),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "sushi shop",
        theme: ThemeData(),
        home: LandingPage(),
      ),
    );
  }
}
