import 'package:rxdart/rxdart.dart';
import 'package:tarjeta_juvenil/src/blocs/validators.dart';

class RegistroBloc with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _nombreController = BehaviorSubject<String>();
  final _apellidoPaternoController = BehaviorSubject<String>();
  final _apellidoMaternoController = BehaviorSubject<String>();
  final _edadController = BehaviorSubject<String>();
  final _sexoController = BehaviorSubject<String>();
  final _curpController = BehaviorSubject<String>();
  final _fechaNacimientoController = BehaviorSubject<String>();
  final _municipioController = BehaviorSubject<String>();
  final _regionController = BehaviorSubject<String>();
  final _numeroTelefonicoController = BehaviorSubject<String>();

//Recuperar Datos del Stream
  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmailRegistro);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validarPasswordRegistro);

  //*************************************************** */ */
  Stream<String> get nombreStream =>
      _nombreController.stream.transform(validarNombreRegistro);

  Stream<String> get apellidoPaternoStream =>
      _apellidoPaternoController.stream.transform(validarApPaternoRegistro);

  Stream<String> get apellidoMaternoStream =>
      _apellidoMaternoController.stream.transform(validarApMaternoRegistro);

  Stream<String> get edadStream =>
      _edadController.stream.transform(validarEdadRegistro);

  Stream<String> get sexoStream =>
      _sexoController.stream.transform(validarSexoRegistro);

  Stream<String> get curpStream =>
      _curpController.stream.transform(validarCurpRegistro);

  Stream<String> get fechaNacimientoStream => _fechaNacimientoController.stream
      .transform(validarFechaNacimientoRegistro);

  Stream<String> get municipioStream =>
      _municipioController.stream.transform(validarMunicipioRegistro);

  Stream<String> get regionStream =>
      _regionController.stream.transform(validarRegionRegistro);

  Stream<String> get numeroTelefonicoStream =>
      _numeroTelefonicoController.stream.transform(validarTelefonoRegistro);

/////////////////////////////////////
  Stream<bool> get formValidStream =>
      Rx.combineLatest2(emailStream, passwordStream, (e, p) {
        if ((e == _emailController.value) && (p == _passwordController.value)) {
          return true;
        }
        return false;
      });
/* ********************************************************************/
  Stream<bool> get formValidStreamTres => Rx.combineLatest6(
          fechaNacimientoStream,
          municipioStream,
          regionStream,
          numeroTelefonicoStream,
          emailStream,
          passwordStream,
          (fechaN, municipio, region, numeroT, email, password) {
        if ((fechaN == _fechaNacimientoController.value) &&
            (municipio == _municipioController.value) &&
            (region == _regionController.value) &&
            (numeroT == _numeroTelefonicoController.value) &&
            (email == _emailController.value) &&
            (password == _passwordController.value)) {
          return true;
        }
        return false;
      });
  Stream<bool> get formValidStreamDos => Rx.combineLatest6(
          nombreStream,
          apellidoPaternoStream,
          apellidoMaternoStream,
          edadStream,
          sexoStream,
          curpStream, (n, p, m, e, s, c) {
        if ((n == _nombreController.value) &&
            (p == _apellidoPaternoController.value) &&
            (m == _apellidoMaternoController.value) &&
            (e == _edadController.value) &&
            (s == _sexoController.value) &&
            (c == _curpController.value)) {
          return true;
        }
        return false;
      });

/*************************************************************************************** */
// Insertar valores al stream

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //////para el registro
  Function(String) get changeNombre => _nombreController.sink.add;
  Function(String) get changeApellidoPaterno =>
      _apellidoPaternoController.sink.add;

  Function(String) get changeApellidoMaterno =>
      _apellidoMaternoController.sink.add;

  Function(String) get changeEdad => _edadController.sink.add;

  Function(String) get changeSexo => _sexoController.sink.add;

  Function(String) get changeCurp => _curpController.sink.add;

  Function(String) get changeFechaNacimiento =>
      _fechaNacimientoController.sink.add;

  Function(String) get changeMunicipio => _municipioController.sink.add;

  Function(String) get changeRegion => _regionController.sink.add;

  Function(String) get changeNumeroTelefonico =>
      _numeroTelefonicoController.sink.add;

/********************************************************************************* */
////Metodo para cerrar el stream cuanso no lo nececito

  disponse() {
    _emailController?.close();
    _passwordController?.close();
    ////registro
    _nombreController?.close();
    _apellidoPaternoController?.close();

    _apellidoMaternoController?.close();
    _edadController?.close();

    _sexoController?.close();
    _curpController?.close();
    _fechaNacimientoController?.close();
    _municipioController?.close();
    _regionController?.close();
    _numeroTelefonicoController?.close();
  }
/****************************************************************************** */
  /// Obtener el ultimo valor ingresado a los streams

  String get email => _emailController.value;
  String get password => _passwordController.value;

  //
  //registro
  String get nombre => _nombreController.value;
  String get apellidoPaterno => _apellidoPaternoController.value;

  String get apellidoMaterno => _apellidoMaternoController.value;

  String get edad => _edadController.value;
  String get sexo => _sexoController.value;
  String get curp => _curpController.value;
  String get fechaNacimiento => _fechaNacimientoController.value;
  String get municipio => _municipioController.value;
  String get region => _regionController.value;
  String get numeroTelefonico => _numeroTelefonicoController.value;
}
