/* import 'dart:math'; */

import 'package:flutter/material.dart';
import 'package:tarjeta_juvenil/src/blocs/provider.dart';

class RegistroPageDos extends StatelessWidget {
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
              child: _contenido(context, bloc)
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

  Widget _contenido(BuildContext context, RegistroBloc bloc) {
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

        _crearEmail(bloc),
        SizedBox(
          height: 30,
        ),
        _crearPassword(bloc),
        SizedBox(
          height: 30,
        ),

        _crearFechaNacimiento(bloc),
        SizedBox(
          height: 30,
        ),
        _crearMunicipio(bloc),
        SizedBox(
          height: 30,
        ),
        _crearRegion(bloc),
        SizedBox(
          height: 30,
        ),
        _crearNumeroTelefonico(bloc),
        SizedBox(
          height: 30,
        ),
        ////////////

        _crearBoton(bloc),
        _crearBotonBack(context)
      ],
    );
  }

  Widget _crearBotonBack(BuildContext context) {
    return TextButton(
        onPressed: () => Navigator.pushNamed(context, 'registro'),
        child: Text('¿?, Regresar'));
  }

  Widget _crearEmail(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.emailStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.alternate_email,
                  color: _color,
                ),
                hintText: 'ejemplo@correo.com',
                labelText: 'Correo electronico',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeEmail,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearPassword(RegistroBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            // keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.lock_outline,
                  color: _color,
                ),
                //hintText: 'ejemplo@correo.com',
                labelText: 'Contraseña',
                counterText: snapshot.data,
                errorText: snapshot.error),
            onChanged: bloc.changePassword,
          ),
        );
      },
    );
  }

  Widget _crearFechaNacimiento(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.fechaNacimientoStream,
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
                hintText: 'Fecha de Nacimiento',
                labelText: 'Fecha de Nacimiento',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeFechaNacimiento,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearMunicipio(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.municipioStream,
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
                hintText: 'Municipio',
                labelText: 'Municipio',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeMunicipio,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearRegion(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.regionStream,
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
                hintText: 'Region',
                labelText: 'Region',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeRegion,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

  Widget _crearNumeroTelefonico(RegistroBloc bloc) {
    return StreamBuilder(
        stream: bloc.numeroTelefonicoStream,
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
                hintText: 'Número Telefonico',
                labelText: 'Número Telefonico',
                counterText: snapshot.data,
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeNumeroTelefonico,

              /// tambien se puede asi (value) => bloc.changeEmail(value),
            ),
          );
        });
  }

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
          color: Color.fromRGBO(248, 231, 232, 0.05)),
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
            //padding: EdgeInsets.only(top: 70.0),
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
      stream: bloc.formValidStreamTres,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Crear Cuenta',
              style: TextStyle(color: Colors.white),
            ),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  snapshot.hasData ? _color : Colors.grey),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),

                  // side: BorderSide(color: Colors.red)
                ),
              ),
              elevation: MaterialStateProperty.all(0.0)),
          onPressed: snapshot.hasData ? () => _login(bloc, context) : null,
        );
      },
    );
  }

  _login(RegistroBloc bloc, BuildContext context) {
    Navigator.pushReplacementNamed(context, 'home');
  }
}
