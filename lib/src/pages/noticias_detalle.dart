import 'package:flutter/material.dart';

class NoticiaDetalle extends StatelessWidget {
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

          _crearParticipantePageView(),
          // _crearParticipantePageView(),
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
          image: AssetImage('assets/noticia-poster.jpeg'),
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
                  image: AssetImage('assets/noticia-titulo.jpeg'),
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
                'Felicitaciones',
                style: Theme.of(context).textTheme.headline6,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '''Gracias a todas y todos los jóvenes que participaron en los distintos talleres educativos''',
                style: Theme.of(context).textTheme.subtitle1,
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
Gracias a todas y todos los jóvenes que participaron en los distintos talleres educativos 📚 así como a los ponentes de los mismos 👏. Les estaremos informando sobre nuevos cursos en línea 🗓 en nuestras redes, estén atentos ❗❗

COBAO
IEBO Oficial
Cecyte Oaxaca
Tecnm Campus Valle de Oaxaca
Cseiio Oficial
Telebachilleratos Comunitarios de Oaxaca
UT Sierra Sur De Oaxaca
      
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
        itemCount: 1,
        itemBuilder: (contexto, i) =>
            _actorTarjeta('Instituto de la Juventud del Estado de Oaxaca'),
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
                  image: AssetImage('assets/injeo.jpeg'),
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
