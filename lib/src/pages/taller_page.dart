import 'package:flutter/material.dart';
import 'package:tarjeta_juvenil/src/widgets/menu_widget.dart';

class TallerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          shadowColor: Color.fromRGBO(250, 31, 38, 0.5),
          foregroundColor: Colors.transparent,
          // backgroundColor: Colors.transparent,
          actions: <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 25,
            )
          ],

          backgroundColor: Color.fromRGBO(250, 31, 38, 1.0),
        ),
        drawer: MenuWidget(),
        body: _paginaCompleta(context));
  }

  Widget _listaCompleta(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: <Widget>[
        _tarjetas(context),
        SizedBox(
          height: 30.0,
        ),
        _tallerDos(context),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }

  Widget _paginaCompleta(BuildContext context) {
    return Stack(
      children: <Widget>[
        _crearFondo(context),
        _listaCompleta(context),
      ],
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondoMorado = Container(
      height: size.height * 0.40,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(250, 31, 38, 1.0),
        Color.fromRGBO(250, 31, 38, 1.0),
      ])),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Color.fromRGBO(248, 231, 232, 0.5)),
    );

    return Stack(
      children: <Widget>[
        fondoMorado,
        Positioned(top: 90.0, left: 30.0, child: circulo),
        Positioned(top: 0.0, right: -30.0, child: circulo),
        Positioned(bottom: -50.0, right: -10.0, child: circulo),
        Positioned(bottom: 120.0, right: 70.0, child: circulo),
        Positioned(bottom: -50.0, left: -20.0, child: circulo),
        SafeArea(
          child: Container(
            //////////////////

            height: size.height * 0.40,

            ///

            alignment: Alignment.center,
            //padding: EdgeInsets.only(top: 70.0),
          ),
        )
      ],
    );
  }

  Widget _tarjetas(BuildContext context) {
    return GestureDetector(
      /* onTap: () {
        print('sss');
      }, */
      child: Card(
          elevation: 10.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage(
                    'assets/tallerDos-01.jpeg',
                  ),
                  height: 250.0,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'detalleTaller');
                },
                title: Container(
                  child: Text(
                    ' Taller de 🗓Salud Sexual y Reproductiva para Jóvenes. 🧍‍♀️🧍',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                subtitle: Text(
                  //'Sunt ullamco mollit minim nostrud eu dolor sunt cillum incididunt. Pariatur duis velit enim elit in anim sint esse consectetur enim irure. Est qui irure excepteur nostrud irure ex dolor sit cillum. Dolore laboris cillum velit commodo voluptate ut sunt pariatur qui ea.',

                  '''
🙋Les recordamos que dentro de la jornada de 
talleres educativos para las y los jóvenes, 
tenemos el día de HOY
🗓Salud Sexual y Reproductiva para Jóvenes. 🧍‍♀️🧍
⏰ 17:00 hrs.

COBAO
Cecyte Oaxaca
IEBO Oficial
Cseiio Oficial
UT Sierra Sur De Oaxaca
Tecnm Campus Valle de Oaxaca
Telebachilleratos Comunitarios de Oaxaca
                  ''',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          )),
    );
  }

// /** */
  Widget _tallerDos(BuildContext context) {
    return GestureDetector(
      /* onTap: () {
        print('sss');
      }, */
      child: Card(
          elevation: 10.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage(
                    'assets/tallerUno-01.jpeg',
                  ),
                  height: 250.0,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'tallerDos');
                },
                title: Container(
                  child: Text(
                    ' Taller de cambio climático',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                subtitle: Text(
                  //'Sunt ullamco mollit minim nostrud eu dolor sunt cillum incididunt. Pariatur duis velit enim elit in anim sint esse consectetur enim irure. Est qui irure excepteur nostrud irure ex dolor sit cillum. Dolore laboris cillum velit commodo voluptate ut sunt pariatur qui ea.',

                  '''
Sabemos que las juventudes son el futuro y el cambio.💡❗
Hablemos del cambio climático, busquemos alternativas para nuestro consumo ☝️, 
uno que sea amigable con el planeta. ✨🌎

Les invitamos al taller educativo de HOY❗

COBAO
Cecyte Oaxaca
UT Sierra Sur De Oaxaca
Telebachilleratos Comunitarios de Oaxaca
Tecnm Campus Valle de Oaxaca
Cseiio Oficial
IEBO Oficial
 🔐
                  ''',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          )),
    );
  }
}
