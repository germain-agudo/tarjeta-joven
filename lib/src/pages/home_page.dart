import 'package:flutter/material.dart';
import 'package:tarjeta_juvenil/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          shadowColor: Color.fromRGBO(250, 31, 38, 0.5),
          foregroundColor: Colors.transparent,
          backgroundColor: Color.fromRGBO(250, 31, 38, 1.0),
          actions: <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 25,
            )
          ],
          // centerTitle: true,
          /* title: Text(
            'Noticias',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w400),
          ), */
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
        _noticiaDos(context),
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
          ),
        )
      ],
    );
  }

  Widget _tarjetas(BuildContext context) {
    return GestureDetector(
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
                    'assets/noticia-titulo.jpeg',
                  ),
                  height: 250.0,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'detalleNoticia');
                },
                title: Container(
                  child: Text(
                    'Gracias a todas y todos los jóvenes ',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                subtitle: Text(
                  '''
que participaron en los distintos talleres educativos 📚 
así como a los ponentes de los mismos 👏. 
Les estaremos informando sobre nuevos cursos en línea 🗓
 en nuestras redes, estén atentos ❗❗

COBAO
IEBO Oficial
Cecyte Oaxaca
Tecnm Campus Valle de Oaxaca
Cseiio Oficial
Telebachilleratos Comunitarios de Oaxaca
UT Sierra Sur De Oaxaca

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

  Widget _noticiaDos(BuildContext context) {
    return GestureDetector(
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
                    'assets/noticiados-01.jpeg',
                  ),
                  height: 250.0,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'noticiaDos');
                },
                title: Container(
                  child: Text(
                    'Mtro. Alejandro Murat',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                subtitle: Text(
                  '''
El día de hoy el Mtro. Alejandro Murat en su gira 
de trabajo en Santa María Huatulco entregó módems 
con internet ilimitado y gratuito del programa 
Jóvenes Conectados.
¡Seguimos impulsando a las juventudes oaxaqueñas! 🤜🏼🤛🏽💥

Alejandro Murat Hinojosa
Ivette Morán de Murat
Gobierno del Estado de Oaxaca

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

/** */
}
