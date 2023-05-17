import 'dart:async';

import 'package:flutter/material.dart';
import './home_page.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).restorablePushNamed(HomePage.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 150,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              )),
          const Text(
            'کنترل از راه دور پیامکی',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ])),
      ),
    );
  }
}
