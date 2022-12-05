import 'package:nutri_message_flutter/models/user.dart';

class Session {
  final String token;
  final User user;
  static Session? _session; // guion bajo significa privado

  Session._(this.token, this.user);

  factory Session.create(String token, User user) {
    return _session ??= Session._(token,
        user); //si el de la izquierda es null, devuelve lo de la derecha pero aparte asignaselo al de la izq.
  }

  factory Session() {
    if (_session == null) throw 'session null found';
    return _session!; // decirle que siempre habrá una session
  }

  @override
  String toString() {
    return "Session(token: $token, user: ${user.toString()})";
  }
}
