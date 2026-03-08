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

  factory Ordinateur.fromJson(Map<String, dynamic> json) {
    return Ordinateur(
      id: json['id'],
      name: json['name'],
      prixUnitaire: json['prixUnitaire'].toDouble(),
      processeur: json['processeur'],
      ram: json['ram'].toDouble(),
    );
  }


  @override
  String getDetail() {
    return "CPU: $processeur, RAM: $ram";
  }

  Map<String, dynamic> toJson() {
    return {
      'type': 'Ordinateur',
      'id': id,
      'name': name,
      'prixUnitaire': prixUnitaire,
      'processeur': processeur,
      'ram': ram,

    };
  }
}
