import 'package:flutter/material.dart';
import 'package:tarjeta_juvenil/src/widgets/menu_widget.dart';

class ConvocatoriaPage extends StatelessWidget {
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
        _convocatoriaDos(context),
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
                    'assets/convocatoriaUno-01.jpeg',
                  ),
                  height: 250.0,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'detalleConvocatoria');
                },
                title: Container(
                  child: Text(
                    'Convocatoria J??venes Conectados',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                subtitle: Text(
                  '''
CONVOCA
A las y los j??venes estudiantes oaxaque??os con un rango de edad entre los 12 a 29 a??os, que no cuenten con acceso a internet para
continuar con su educaci??n a distancia, a participar en la Actividad denominada ???J??venes Conectados???. La Actividad tiene el objetivo de facilitar a la poblaci??n joven estudiante del estado (mujeres y hombres en un rango de edad de 12 a
29 a??os), el acceso a internet durante el periodo comprendido a un semestre escolar efectivo (5 meses) a fin de que puedan continuar
con su educaci??n a distancia.
??? Podr??n participar j??venes de 12 a 29 a??os que est??n inscritos en el ciclo escolar 2020-2021 y que carezcan de conectividad
para tomar sus clases de manera virtual.
??? Las y los participantes deben residir en el Estado de Oaxaca, en cualquiera de sus municipios. Link de convocatoria completa https://www.oaxaca.gob.mx/injeo/convocatorias/

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

  Widget _convocatoriaDos(BuildContext context) {
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
                    'assets/convocatoriaDos-01.jpeg',
                  ),
                  height: 250.0,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'convocatoriaDos');
                },
                title: Container(
                  child: Text(
                    'convocatoria del IMJUVE ',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                subtitle: Text(
                  '''
que forman parte del corredor interoce??nico del Istmo de Tehuatepec, les compartimos la siguiente convocatoria del IMJUVE Instituto Mexicano de la Juventud. Si cumples con los requisitos, ??nete a #NodosTerritoriales para acompa??ar proyectos nacionales, con el objetivo de detectar necesidades y ??reas de oportunidad para ayudar a las juventudes. 

Les compartimos el link para la convocatoria completa:
https://www.oaxaca.gob.mx/injeo/convocatorias/

Alejandro Murat Hinojosa
Ivette Mor??n de Murat
Gobierno del Estado de Oaxaca
IMJUVE Instituto Mexicano de la Juventud

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
