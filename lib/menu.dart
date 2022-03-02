import 'package:flutter/material.dart';
import 'package:fluttercanditicketadmin/Presentacion/Login.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'dart:ui' as ui;

class Menu extends StatefulWidget {
  static final String routeName = 'Menu';
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavigationDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300.0),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.white,
          flexibleSpace: Stack(
            children: [
              CustomPaint(
                size: Size(
                    300,
                    (280 * 1.0270588235294118)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 0, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Bienvenido.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Registrate o inicia sesión para crear y gestionar eventos.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 150,
                ),
                height: 53,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/logogoogle.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text(
                          'Continuar con Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 16, left: 28, right: 28),
                      side: BorderSide(width: 1.6, color: Colors.black),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0))),
                )),
            Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                ),
                height: 53,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/facebook.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text(
                          'Continuar con Facebook',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 16, left: 28, right: 28),
                      side: BorderSide(width: 1.6, color: Colors.black),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0))),
                )),
            Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                ),
                height: 53,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Login.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          'Continuar con el correo electrónico',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 16, left: 28, right: 28),
                      side: BorderSide(width: 1.6, color: Colors.black),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0))),
                )),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3417647, size.height);
    path_0.cubicTo(size.width * 0.7052976, size.height, size.width,
        size.height * 0.7153700, size.width, size.height * 0.3642612);
    path_0.cubicTo(size.width, size.height * 0.2287595, size.width * 0.9561082,
        size.height * 0.1031599, size.width * 0.8813071, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height * 0.9076999);
    path_0.cubicTo(
        size.width * 0.09962000,
        size.height * 0.9662669,
        size.width * 0.2166129,
        size.height,
        size.width * 0.3417647,
        size.height);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffED5734).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Center(
              child: Container(
                  color: HexColor('212121'),
                  width: double.infinity,
                  height: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                      'assets/logoadmin.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Material(
              color: Colors.white,
              child: Container(
                height: 60,
                child: ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                  ),
                  hoverColor: Colors.white,
                  title: Text(
                    'Config. de dispositivo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Material(
              color: Colors.white,
              child: Container(
                height: 60,
                child: ListTile(
                  leading: Icon(
                    Iconsax.user,
                    color: HexColor('ED5734'),
                  ),
                  title: Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
