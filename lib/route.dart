import 'package:flutter/material.dart';
import 'package:fluttercanditicketadmin/Presentacion/IniciarSesion.dart';
import 'package:fluttercanditicketadmin/Presentacion/Login.dart';
import 'package:fluttercanditicketadmin/Presentacion/Principal.dart';
import 'package:fluttercanditicketadmin/Presentacion/RecuperarPassword.dart';
import 'package:fluttercanditicketadmin/menu.dart';

final routes = <String, WidgetBuilder>{
  Login.routeName: (BuildContext context) => Login(),
  Principal.routeName: (BuildContext context) => Principal(),
  IniciarSesion.routeName: (BuildContext context) => IniciarSesion(),
  RecuperarPassword.routeName: (BuildContext context) => RecuperarPassword(),
  Menu.routeName: (BuildContext context) => Menu(),
};
