import 'package:flutter/material.dart';
import 'package:tarjeta_juvenil/src/blocs/provider.dart';
import 'package:tarjeta_juvenil/src/pages/convocatoria_page.dart';
import 'package:tarjeta_juvenil/src/pages/detalle_convocatoria_page.dart';
import 'package:tarjeta_juvenil/src/pages/detalle_foro_page.dart';
import 'package:tarjeta_juvenil/src/pages/detalle_taller_page.dart';
import 'package:tarjeta_juvenil/src/pages/foros_page.dart';

import 'package:tarjeta_juvenil/src/pages/home_page.dart';
import 'package:tarjeta_juvenil/src/pages/login_page.dart';
import 'package:tarjeta_juvenil/src/pages/noticias_detalle.dart';
import 'package:tarjeta_juvenil/src/pages/registro_page.dart';
import 'package:tarjeta_juvenil/src/pages/registroPageDos.dart';
import 'package:tarjeta_juvenil/src/pages/taller_page.dart';
import 'package:tarjeta_juvenil/src/pages/webinar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tarjeta Joven Digital ',
        initialRoute: 'login',
        routes: {
          'home': (BuildContext context) => HomePage(),
          'registro': (BuildContext context) => RegistroPage(),
          'login': (BuildContext context) => LoginPage(),
          'registroDos': (BuildContext context) => RegistroPageDos(),
          'detalleNoticia': (BuildContext context) => NoticiaDetalle(),
          'taller': (BuildContext context) => TallerPage(),
          'detalleTaller': (BuildContext context) => DetalleTaller(),
          'convocatoria': (BuildContext context) => ConvocatoriaPage(),
          'detalleConvocatoria': (BuildContext context) =>
              DetalleConvocatoria(),
          'webinar': (BuildContext context) => WebinarPage(),
          'foro': (BuildContext context) => ForoPage(),
          'detalleForo': (BuildContext context) => DetalleForo(),
        },
        theme: ThemeData(
          primaryColor: Color.fromRGBO(250, 31, 38, 1.0),
        ),
      ),
    );
  }
}
