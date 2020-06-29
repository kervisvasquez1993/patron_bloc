import 'package:flutter/material.dart';
import 'package:patron_bloc/src/bloc/providers.dart';
import 'package:patron_bloc/src/page/HomaPage.dart';
import 'package:patron_bloc/src/page/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material app',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage()
        },
      ),
    );
  }
}
