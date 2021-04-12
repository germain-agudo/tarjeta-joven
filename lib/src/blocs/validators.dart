import 'dart:async';

class Validators {
  final validarEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    //
    //expresion regular
    RegExp regExp = new RegExp(pattern);
    if (regExp.hasMatch(email)) {
      sink.add(email);
    } else {
      sink.addError('Email no es correcto');
    }
  });

  final validarPassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length >= 6) {
      sink.add(password);
    } else {
      sink.addError('Mas de 6 caracteres por favor');
    }
  });

//Para el registro
//
//******************************************* */
  final validarEmailRegistro =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    //
    //expresion regular
    RegExp regExp = new RegExp(pattern);
    if (regExp.hasMatch(email)) {
      sink.add(email);
    } else {
      sink.addError('Email no es correcto');
    }
  });

  final validarPasswordRegistro =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (password, sink) {
    if (password.length >= 6) {
      sink.add(password);
    } else {
      sink.addError('Mas de 6 caracteres por favor');
    }
  });
//nombre
  final validarNombreRegistro = StreamTransformer<String, String>.fromHandlers(
      handleData: (nombre, sink) {
    if (nombre.length >= 2) {
      sink.add(nombre);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });
//Apellido Paterno
  final validarApPaternoRegistro =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (apPaterno, sink) {
    if (apPaterno.length >= 2) {
      sink.add(apPaterno);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });

  //Apellido Materno
  final validarApMaternoRegistro =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (apMaterno, sink) {
    if (apMaterno.length >= 2) {
      sink.add(apMaterno);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });

//edad
  final validarEdadRegistro =
      StreamTransformer<String, String>.fromHandlers(handleData: (edad, sink) {
    if (edad.length >= 2) {
      sink.add(edad);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });
  //Sexo
  final validarSexoRegistro =
      StreamTransformer<String, String>.fromHandlers(handleData: (sexo, sink) {
    if (sexo.length >= 2) {
      sink.add(sexo);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });
  //curp
  final validarCurpRegistro =
      StreamTransformer<String, String>.fromHandlers(handleData: (curp, sink) {
    if (curp.length >= 2) {
      sink.add(curp);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });
  //fecha de Nacimiento
  final validarFechaNacimientoRegistro =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (fechaNacimiento, sink) {
    if (fechaNacimiento.length >= 2) {
      sink.add(fechaNacimiento);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });
  //Municipio
  final validarMunicipioRegistro =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (municipio, sink) {
    if (municipio.length >= 2) {
      sink.add(municipio);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });
  // Region
  final validarRegionRegistro = StreamTransformer<String, String>.fromHandlers(
      handleData: (region, sink) {
    if (region.length >= 2) {
      sink.add(region);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });

  //Numero telefonico
  final validarTelefonoRegistro =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (telefono, sink) {
    if (telefono.length >= 2) {
      sink.add(telefono);
    } else {
      sink.addError('Mas de 2 caracteres por favor');
    }
  });
}
