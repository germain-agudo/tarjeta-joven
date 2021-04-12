import 'package:rxdart/rxdart.dart';
import 'package:tarjeta_juvenil/src/blocs/validators.dart';

class LoginBloc with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

//Recuperar Datos del Stream
  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validarPassword);

//
  Stream<bool> get formValidStream =>
      Rx.combineLatest2(emailStream, passwordStream, (e, p) {
        if ((e == _emailController.value) && (p == _passwordController.value)) {
          return true;
        }
        return false;
      });

// Insertar valores al stream

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

////Metodo para cerrar el stream cuanso no lo nececito

  disponse() {
    _emailController?.close();
    _passwordController?.close();
  }

  /// Obtener el ultimo valor ingresado a los streams

  String get email => _emailController.value;
  String get password => _passwordController.value;
}
