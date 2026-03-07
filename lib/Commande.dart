import 'package:tp1_dart/Client.dart';
import 'package:tp1_dart/LigneCommande.dart';
import 'package:tp1_dart/StatutCommande.dart';

class Commande {
  int id;
  Client client;
  List<Lignecommande> lignes;
  StatutCommande statut;

  Commande({
    required this.id,
    required this.client,
    required this.statut,
    this.lignes = const [],
  });

  double calculerTotalCommande() {
    double total = 0;
    for (var ligne in lignes) {
      total += ligne.calculerSousTotal();                                                 
    }
    return total;
  }
}
