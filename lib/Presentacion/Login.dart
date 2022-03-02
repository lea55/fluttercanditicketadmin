import 'package:flutter/material.dart';
import 'package:fluttercanditicketadmin/Presentacion/IniciarSesion.dart';

import 'package:fluttercanditicketadmin/menu.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:iconsax/iconsax.dart';

class Login extends StatefulWidget {
  static final String routeName = 'Login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(children: [
        Divider(thickness: 0.7, color: HexColor('CACACA')),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
          width: MediaQuery.of(context).size.width,
          height: 53,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: HexColor('B5B5B5'),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, IniciarSesion.routeName);
            },
            child: Text(
              'Siguiente',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'Iniciar sesión o registrarse',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: HexColor('212121'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 25,
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    cursorWidth: 0.5,
                    cursorColor: Colors.black,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontFamily: 'DMSans'),
                    decoration: InputDecoration(
                      hintText: 'Correo electrónico',
                      label: Text(
                        'Correo electrónico',
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      floatingLabelStyle: TextStyle(
                          color: HexColor('ED5734'),
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w500,
                          fontSize: 15.5),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w500,
                          fontSize: 15.5),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: HexColor('383838'), width: 1.6)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: HexColor('ED5734'), width: 1.6)),
                      hintStyle: TextStyle(
                          color: HexColor('6F7285'),
                          fontFamily: 'DMSans',
                          fontSize: 15.5,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
