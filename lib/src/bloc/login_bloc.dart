import 'dart:async';

import 'package:patron_bloc/src/bloc/validater.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // recuperar datos de los stream

  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validarPassword);

// convinacion con stream

  Stream<bool> get formValidStream => Observable.combineLatest2(
      _emailController, passwordStream, (e, p) => true);

  //insertar
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

// obtener el ultimo valor en los campos
  String get email => _emailController.value;
  String get password => _passwordController.value;
  // cerrar los stream

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
