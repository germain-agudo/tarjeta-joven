import 'package:flutter/material.dart';

class TallerDos extends StatelessWidget {
  final List<String> participantesName = [
    'Fátima Nallely Pérez Pérez',
    'Christofer Ruíz Gutiérrez',
  ];
  final List<String> participantesImage = [
    'assets/femenino.png',
    'assets/masculino.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        _crearAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 30.0,
          ),
          _posterTitulo(context),
          SizedBox(
            height: 30.0,
          ),
          _descripcion(),
          // _descripcion(),
          SizedBox(
            height: 30.0,
          ),
          _crearParticipantePageView(),
          // _crearParticipantePageView(),
          SizedBox(
            height: 30.0,
          ),
        ]))
      ],
    ));
  }

  Widget _crearAppBar() {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Color.fromRGBO(250, 31, 38, 0.85),
      expandedHeight: 250.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          '',
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
        ),
        background: Image(
          image: AssetImage('assets/tallerUno-01.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _posterTitulo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Hero(
            tag: Text('',
                style: TextStyle(
                  color: Colors.black,
                )),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: 150,
                width: 170,
                child: Image(
                  alignment: Alignment.center,
                  image: AssetImage('assets/tallerUno-02.jpeg'),
                  // height: 150.0,
                  fit: BoxFit.cover,
                  // width: 150.0,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Flexible(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hablemos del cambio climático',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '''busquemos alternativas para nuestro consumo ''',
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,

                //overflow: TextOverflow.ellipsis,
              ),
            ],
          ))
        ],
      ),
    );
  }

  Widget _descripcion() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Text(
        '''
Sabemos que las juventudes son el futuro y el cambio.💡❗
Hablemos del cambio climático, busquemos alternativas para nuestro consumo ☝️, uno que sea amigable con el planeta. ✨🌎

Les invitamos al taller educativo de HOY❗

COBAO
Cecyte Oaxaca
UT Sierra Sur De Oaxaca
Telebachilleratos Comunitarios de Oaxaca
Tecnm Campus Valle de Oaxaca
Cseiio Oficial
IEBO Oficial
      
      ''',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget _crearParticipantePageView() {
    return SizedBox(
      height: 200.0,
      child: PageView.builder(
        pageSnapping: false,
        controller: PageController(viewportFraction: 0.3, initialPage: 1),
        itemCount: participantesName.length,
        itemBuilder: (contexto, i) =>
            _actorTarjeta(participantesName[i], participantesImage[i]),
      ),
    );
  }

  Widget _actorTarjeta(String nombre, String imagen) {
    return SizedBox(
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage(imagen),
                  fit: BoxFit.cover,
                  height: 120,
                  width: 100,
                )),
            Text(
              '$nombre',
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
