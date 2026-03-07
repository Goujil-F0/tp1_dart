import 'package:tp1_dart/Produit.dart';

class Telephone extends Produit {
  String se;
  double taille;

  Telephone({
    required int id,
    required String name,
    required double prixUnitaire,
    required this.se,
    required this.taille,
  }) : super(id: id, name: name, prixUnitaire: prixUnitaire);

  @override
  String getDetail() {
    return "Systeme d'exploitation: $se, La taille: $taille";
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 'Telephone',
      'id': id,
      'name': name,
      'prixUnitaire': prixUnitaire,
      'SE': se,
      'taille': taille,
    };
  }
}
