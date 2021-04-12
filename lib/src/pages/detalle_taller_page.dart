import 'package:flutter/material.dart';

class DetalleTaller extends StatelessWidget {
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
          'Taller de seguridad cibernética',
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
        ),
        background: Image(
          image: AssetImage('assets/taller-principal.jpeg'),
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
                image: AssetImage('assets/seguridad.jpg'),
                height: 100.0,
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
                'Taller de seguridad cibernética ',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                ''' con nuestros compañeros de Metabase Q. 💻📱
                ''',
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
El día 24 tenemos el último taller de seguridad cibernética con nuestros compañeros de Metabase Q. 💻📱
🔒 Credenciales inseguras y Pentesting. 🔐
Únete y conoce las recomendaciones para proteger tu información. 
Regístrate: https://metabaseq.zoom.us/.../WN_EKgCfnstT5Os2JnbTOU5fQ 
 
Alejandro Murat Hinojosa
Ivette Morán de Murat
Gobierno del Estado de Oaxaca
IEBO Oficial
Cecyte Oaxaca
COBAO
Telebachilleratos Comunitarios de Oaxaca
Cseiio Oficial
UT Sierra Sur De Oaxaca
Tecnm Campus Valle de Oaxaca
      
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
