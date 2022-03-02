import 'package:flutter/material.dart';
import 'package:fluttercanditicketadmin/Presentacion/Login.dart';
import 'package:hexcolor/hexcolor.dart';

class Principal extends StatefulWidget {
  static final String routeName = 'Principal';
  Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 160),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/logo1.png',
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 160),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/faceid.png',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: HexColor('B5B5B5'),
                thickness: 1,
              ),
              Container(
                height: 48,
                width: double.infinity,
                margin: EdgeInsets.only(right: 15, left: 15, top: 15),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Login.routeName);
                  },
                  child: Text(
                    'Crear cuenta',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60, right: 20, left: 20),
                child: Text(
                  'El presente documento establece los términos y condiciones generales del uso (“Términos y Condiciones Generales”) que serán aplicables cuando usted visite y/o utilice la Plataforma  Digital y/o el Sitio Web https://www.mascot.com/ (en adelante, de manera conjunta “Plataforma”), cuyas titularidades y contenido son de total autoría de MASCOT,  INC. (“MASCOT”).',
                  style: TextStyle(
                      color: HexColor('B5B5B5'),
                      fontSize: 11,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
