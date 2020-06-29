import 'dart:async';

import 'package:patron_bloc/src/bloc/validater.dart';

class LoginBloc with Validators {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();
  // recuperar datos de los stream

  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validarPassword);

  //insertar
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // cerrar los stream

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
