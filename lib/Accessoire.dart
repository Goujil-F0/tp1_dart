import 'package:tp1_dart/Produit.dart';

class Accessoire extends Produit {
  String categorie;

  Accessoire({
    required int id,
    required String name,
    required double prixUnitaire,
    required this.categorie,
  }) : super(id: id, name: name, prixUnitaire: prixUnitaire);

  factory Accessoire.fromJson(Map<String, dynamic> json) {
    return Accessoire(
      id: json['id'],
      name: json['name'],
      prixUnitaire: json['prixUnitaire'].toDouble(),
      categorie: json['categorie'],
    );
  }


  @override
  String getDetail() {
    return "Catégorie: $categorie";
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 'Accessoire',
      'id': id,
      'name': name,
      'prixUnitaire': prixUnitaire,
      'categorie': categorie,
    };
  }
}
