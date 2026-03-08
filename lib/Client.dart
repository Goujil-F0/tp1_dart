import 'package:tp1_dart/Commande.dart';

class Client {
  String name;
  String prenom;
  String tlphn;
  String email;
  List<Commande> historique;

  Client({
    required this.name,
    required this.prenom,
    required this.tlphn,
    required this.email,
    this.historique = const [],
  });

  factory Client.fromJson(Map<String, dynamic> json) {
  return Client(
    name: json['name'],
    prenom: json['prenom'],
    tlphn: json['tlphn'],
    email: json['email'],
  );
}

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'prenom': prenom,
      'tlphn': tlphn,
      'email': email,
    };
  }
}
