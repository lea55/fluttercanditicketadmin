import 'package:flutter/material.dart';
import 'package:fluttercanditicketadmin/Presentacion/IniciarSesion.dart';
import 'package:fluttercanditicketadmin/Presentacion/Login.dart';

import 'package:fluttercanditicketadmin/menu.dart';

final routes = <String, WidgetBuilder>{
  Login.routeName: (BuildContext context) => Login(),
  IniciarSesion.routeName: (BuildContext context) => IniciarSesion(),
  Menu.routeName: (BuildContext context) => Menu(),
};
