import 'package:flutter/material.dart';
import 'package:patron_bloc/src/bloc/providers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Email : ${bloc.email}'),
            Text('Password : ${bloc.password}')
          ],
        ),
      ),
    );
  }
}
