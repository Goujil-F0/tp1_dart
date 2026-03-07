import 'package:tp1_dart/Produit.dart';

class Ordinateur extends Produit {
  String processeur;
  String ram;

  Ordinateur({
    required int id,
    required String name,
    required double prixUnitaire,
    required this.processeur,
    required this.ram,
  }) : super(id: id, name: name, prixUnitaire: prixUnitaire);

  @override
  String getDetail() {
    return "CPU: $processeur, RAM: $ram";
  }
}
