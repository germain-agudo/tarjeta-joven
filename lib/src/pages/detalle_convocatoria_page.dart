import 'package:flutter/material.dart';

class DetalleConvocatoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        _crearAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 10.0,
          ),
          _posterTitulo(context),
          _descripcion(),
          _descripcion(),
          _crearParticipantePageView()
        ]))
      ],
    ));
  }

  Widget _crearAppBar() {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Color.fromRGBO(250, 31, 38, 0.85),
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'Convocatoria de Microcréditos',
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
        ),
        background: Image(
          image: AssetImage('assets/convocatoria.jpg'),
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
              child: Image(
                image: AssetImage('assets/convocatoria-secundario.jpg'),
                height: 150.0,
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
                'Microcréditos',
                style: Theme.of(context).textTheme.headline6,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '''Jóvenes Creciendo en Oaxaca.''',
                style: Theme.of(context).textTheme.subtitle1,
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
Les compartimos los formularios para que se registren en la convocatoria de Microcréditos, Jóvenes Creciendo en Oaxaca.

¡Regístrate en los siguientes links!
https://www.oaxaca.gob.mx/injeo/convocatorias/
https://www.oaxaca.gob.mx/fifeo/jovenes-creciendo-en-oaxaca/

BanOaxaca
Alejandro Murat Hinojosa
Ivette Morán de Murat
Gobierno del Estado de Oaxaca
      
      ''' +
              'Qui fugiat quis duis mollit deserunt qui est aliquip adipisicing laborum non minim. Commodo fugiat dolor culpa irure. Consectetur duis consequat dolor velit quis excepteur ullamco amet Lorem adipisicing et nulla cillum labore. Ea ut aliquip amet amet ex nulla consequat in mollit laborum.',
          textAlign: TextAlign.justify),
    );
  }

  Widget _crearParticipantePageView() {
    return SizedBox(
      height: 200.0,
      child: PageView.builder(
        pageSnapping: false,
        controller: PageController(viewportFraction: 0.3, initialPage: 1),
        itemCount: 5,
        itemBuilder: (contexto, i) => _actorTarjeta('Alejandro Murat Hinojosa'),
      ),
    );
  }

  Widget _actorTarjeta(String nombre) {
    return SizedBox(
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage('assets/alejandro-murat.jpg'),
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
