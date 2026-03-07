import 'package:tp1_dart/Produit.dart';

class Lignecommande {
  Produit produit;
  int qte;

  Lignecommande({required this.produit, required this.qte});

  double calculerSousTotal() {
    return produit.prixUnitaire * qte;
  }

  Map<String, dynamic> toJson() {
    return {
      'produit': produit.toJson(),
      'qte': qte,
    };
  }
}
