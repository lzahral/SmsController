import 'package:flutter/material.dart';
import './pages/buttons_page.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      theme: ThemeData(
          fontFamily: 'Iranyekan',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.amber[800])),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomePage(),
      ),
      routes: {
        HomePage.routeName: (ctx) => const Directionality(
              textDirection: TextDirection.rtl,
              child: HomePage(),
            ),
        ButtonsPage.routeName: (ctx) => const Directionality(
              textDirection: TextDirection.rtl,
              child: ButtonsPage(),
            )
      },
    );
  }
}
