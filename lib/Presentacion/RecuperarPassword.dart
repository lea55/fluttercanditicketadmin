import 'package:flutter/material.dart';
import 'package:fluttercanditicketadmin/menu.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:iconsax/iconsax.dart';

class RecuperarPassword extends StatefulWidget {
  static final String routeName = 'RecuperarPassword';
  const RecuperarPassword({Key? key}) : super(key: key);

  @override
  State<RecuperarPassword> createState() => _RecuperarPasswordState();
}

class _RecuperarPasswordState extends State<RecuperarPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Iconsax.close_square),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 25,
          )),
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        'Recuperar Contraseña',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Text(
                        'Ingresa tu correo para recuperar tu contraseña',
                        style: TextStyle(
                          color: HexColor('B5B5B5'),
                          fontSize: 15.5,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 50,
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    cursorWidth: 0.5,
                    cursorColor: Colors.white,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      hintText: 'Correo electronico',
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.5),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: HexColor('383838'), width: 1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      hintStyle: TextStyle(
                          color: HexColor('B5B5B5'),
                          fontFamily: 'DMSans',
                          fontSize: 15.5,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    cursorWidth: 0.5,
                    cursorColor: Colors.white,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      hintText: 'Numero de celular',
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.5),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: HexColor('383838'), width: 1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      hintStyle: TextStyle(
                          color: HexColor('B5B5B5'),
                          fontFamily: 'DMSans',
                          fontSize: 15.5,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                    width: 1.0,
                    color: Colors.white,
                  )),
                  onPressed: () {
                    Navigator.pushNamed(context, Menu.routeName);
                  },
                  child: Text(
                    'Recuperar contraseña',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
