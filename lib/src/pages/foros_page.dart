import 'package:flutter/material.dart';
import 'package:tarjeta_juvenil/src/widgets/menu_widget.dart';

class ForoPage extends StatelessWidget {
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
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage(
                    'assets/foroUno.jpeg',
                  ),
                  height: 250.0,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'detalleForo');
                },
                title: Container(
                  child: Text(
                    'Foro  entrevista a Javier Aquino',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                subtitle: Text(
                  '''
¡ES HOY! ¡ES HOY! ⚽️
No te puedes perder esta increíble entrevista que realizará la directora Montserrat Heinze del Instituto de Cultura Física y Deporte de Oaxaca al futbolista oaxaqueño Javier Aquino, jugador de los Tigres.  
 
18:00 hrs, a través de nuestro #FacebookLive.  🤩

Instituto de Cultura Física y Deporte de Oaxaca
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
}
