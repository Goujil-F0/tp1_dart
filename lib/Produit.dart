import 'package:tp1_dart/Accessoire.dart';
import 'package:tp1_dart/Ordinateur.dart';
import 'package:tp1_dart/Telephone.dart';

abstract class Produit {
  int id;
  String name;
  double prixUnitaire;
  //Constructeur
  Produit({required this.id, required this.name, required this.prixUnitaire});
  //Methode commune
  void afficherInfo() {
    print("Produit $id : $name son prix=$prixUnitaire DH");
  }

  static Produit fromJson(Map<String, dynamic> json) {
    String type = json['type'];

    if (type == 'Ordinateur') {
      return Ordinateur.fromJson(json);
    } else if (type == 'Telephone') {
      return Telephone.fromJson(json);
    } else if (type == 'Accessoire') {
      return Accessoire.fromJson(json);
    } else {
      throw Exception("Type de produit '$type' inconnu !");
    }
  }

  //Methode abstraite
  String getDetail();

  Map<String, dynamic> toJson();
  
}
