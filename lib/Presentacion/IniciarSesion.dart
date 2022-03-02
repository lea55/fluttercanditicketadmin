import 'package:flutter/material.dart';
import 'package:fluttercanditicketadmin/menu.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:iconsax/iconsax.dart';

class IniciarSesion extends StatefulWidget {
  static final String routeName = 'IniciarSesion';
  const IniciarSesion({Key? key}) : super(key: key);

  @override
  State<IniciarSesion> createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(children: [
        Divider(thickness: 0.7, color: HexColor('CACACA')),
        Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: HexColor('B5B5B5'),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'He olvidado mi contraseña?',
                style: TextStyle(
                  color: HexColor('ED5734'),
                  fontSize: 15,
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'Iniciar sesión',
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
                width: double.infinity,
                height: 180,
                color: HexColor('F2F2F2'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Iconsax.user,
                        color: Colors.black,
                        size: 40,
                      ),
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'leandrovqz@hotmail.com',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Cambiar',
                            style: TextStyle(
                              color: HexColor('ED5734'),
                              fontSize: 14,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                      hintText: 'Contraseña',
                      label: Text(
                        'Contraseña',
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
