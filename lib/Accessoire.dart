import 'package:tp1_dart/Produit.dart';

class Accessoire extends Produit {
  String categorie;

  Accessoire({
    required int id,
    required String name,
    required double prixUnitaire,
    required this.categorie,
  }) : super(id: id, name: name, prixUnitaire: prixUnitaire);

  @override
  String getDetail() {
    return "Catégorie: $categorie";
  }
}
