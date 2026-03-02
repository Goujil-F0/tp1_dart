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

  //Methode abstraite
  String getDetail();
}
