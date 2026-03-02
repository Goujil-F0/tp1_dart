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
    this.historique= const [],
  });
}
