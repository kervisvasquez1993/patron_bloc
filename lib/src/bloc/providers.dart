import 'package:flutter/material.dart';
import 'package:patron_bloc/src/bloc/login_bloc.dart';
export 'package:patron_bloc/src/bloc/login_bloc.dart';

class Provider extends InheritedWidget {
  /** nueva forma para almacenar los valores */
  static Provider _instancia;
  factory Provider({Key key, Widget child}) {
    if (_instancia == null) {
      _instancia = new Provider._internal(key: key, child: child);
    }
    return _instancia;
  }

  /* fin del almacenamiento de los provides */
  final loginBloc = LoginBloc();

  Provider._internal({Key key, Widget child}) : super(key: key, child: child);
  //Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
  static LoginBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider)
        .loginBloc;
  }
}
