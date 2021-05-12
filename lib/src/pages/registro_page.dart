/* import 'dart:math'; */

import 'package:flutter/material.dart';
import 'package:tarjeta_juvenil/src/blocs/provider.dart';

class RegistroPage extends StatelessWidget {
  final Color _color = Colors.red[400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[_crearFondo(context), _loginForm(context)],
    ));
  }

  Widget _loginForm(BuildContext context) {
    final bloc = Provider.ofRegistro(context);

    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            //height: 280.0,
            height: 200.0,
          )),
          Container(
              width: size.width * 0.85,
              margin: EdgeInsets.symmetric(vertical: 30.0),
              padding: EdgeInsets.symmetric(vertical: 50.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 3.0,
                    )
                  ]),
              child: _contenido(bloc)
              //_contenido(bloc)

              ),

          // Text('¿Olvido la Contraseña?'),
          TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, 'login'),
              child: Text('¿Ya tienes cuenta?, Registro')),
          SizedBox(
            height: 100.0,
          )
        ],
      ),
    );
  }

  Widget _contenido(RegistroBloc bloc) {
    return Column(
      children: <Widget>[
        Text(
          'Crear una nueva cuenta',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(
          height: 60.0,
        ),
        /*********************** */
        _crearNombre(bloc),
        SizedBox(
          height: 30,
        ),
        _crearApellidoPaterno(bloc),
        SizedBox(
          height: 30,
        ),
        _crearApellidoMaterno(bloc),
        SizedBox(
          height: 30,
        ),
        _crearEdad(bloc),
        SizedBox(
          height: 30,
        ),
        _crearSexo(bloc),
        SizedBox(
          height: 30,
        ),
        _crearCurp(bloc),
        SizedBox(
          height: 30,
        ),
        ////////
        _crearBoton(bloc),
      ],
    );
  }

  Widget _crearNombre(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.nombreStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                //suffixIcon: Icon(Icons.accessibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                icon: Icon(
                  Icons.account_circle,
                  color: _color,
                ),
                hintText: 'nombre',
                labelText: 'Nombre',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeNombre,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearApellidoPaterno(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.apellidoPaternoStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                //suffixIcon: Icon(Icons.accessibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                icon: Icon(
                  Icons.account_circle,
                  color: _color,
                ),
                hintText: 'Apellido Paterno',
                labelText: 'Apellido Paterno',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeApellidoPaterno,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearApellidoMaterno(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.apellidoMaternoStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                //suffixIcon: Icon(Icons.accessibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                icon: Icon(
                  Icons.account_circle,
                  color: _color,
                ),
                hintText: 'Apellido Materno',
                labelText: 'Apellido Materno',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeApellidoMaterno,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearEdad(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.edadStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                //suffixIcon: Icon(Icons.accessibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                icon: Icon(
                  Icons.account_circle,
                  color: _color,
                ),
                hintText: 'Edad',
                labelText: 'Edad',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeEdad,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearSexo(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.sexoStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                //suffixIcon: Icon(Icons.accessibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                icon: Icon(
                  Icons.account_circle,
                  color: _color,
                ),
                hintText: 'Sexo',
                labelText: 'Sexo',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeSexo,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearCurp(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.curpStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                //suffixIcon: Icon(Icons.accessibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                icon: Icon(
                  Icons.account_circle,
                  color: _color,
                ),
                hintText: 'Curp',
                labelText: 'Curp',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeCurp,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

/******************************* */
  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondoMorado = Container(
      height: size.height * 0.50,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/logo-arriba.png'), fit: BoxFit.cover),
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
          color: Color.fromRGBO(248, 231, 232, 0.03)),
    );

    return Stack(
      children: <Widget>[
        fondoMorado,
        Positioned(top: 90.0, left: 30.0, child: circulo),
        Positioned(top: -40.0, right: -30.0, child: circulo),
        Positioned(bottom: -50.0, right: -10.0, child: circulo),
        Positioned(bottom: 120.0, right: 20.0, child: circulo),
        Positioned(bottom: -50.0, left: -20.0, child: circulo),
        SafeArea(
          child: Container(
            //////////////////

            height: size.height * 0.40,

            ///

            alignment: Alignment.center,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'INJEO',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _crearBoton(RegistroBloc bloc) {
    return StreamBuilder(
      stream: bloc.formValidStreamDos,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Siguiente',
              style: TextStyle(color: Colors.white),
            ),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  snapshot.hasData ? _color : Colors.grey),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0.0)),
          onPressed: snapshot.hasData ? () => _login(bloc, context) : null,
        );
      },
    );
  }

  _login(RegistroBloc bloc, BuildContext context) {
    Navigator.pushReplacementNamed(context, 'registroDos');
  }
}
