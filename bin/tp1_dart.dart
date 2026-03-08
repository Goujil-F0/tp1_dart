import 'dart:io';
import 'package:tp1_dart/Produit.dart';
import 'package:tp1_dart/Ordinateur.dart';
import 'package:tp1_dart/Client.dart';
import 'package:tp1_dart/Commande.dart';
import 'package:tp1_dart/LigneCommande.dart';
import 'package:tp1_dart/StatutCommande.dart';
import 'package:tp1_dart/store_manager.dart';

void main() async {
  List<Produit> produits = await StoreManager.loadProduits();
  List<Client> clients = await StoreManager.loadClients();
  List<Commande> commandes = await StoreManager.loadCommandes();

  print("=== BIENVENUE DANS LA GESTION DU MAGASIN ===");

  bool continuer = true;
  while (continuer) {
    print("\n1. Ajouter un Ordinateur\n2. Lister Produits\n3. Ajouter Client\n4. Créer Commande\n5. Sauvegarder et Quitter");
    stdout.write("Choix : ");
    String? choix = stdin.readLineSync();

    switch (choix) {
      case '1':
        stdout.write("Nom : "); String nom = stdin.readLineSync()!;
        stdout.write("Prix : "); double prix = double.parse(stdin.readLineSync()!);
        stdout.write("CPU : "); String cpu = stdin.readLineSync()!;
        produits.add(Ordinateur(id: produits.length + 1, name: nom, prixUnitaire: prix, processeur: cpu, ram: "16GB"));
        print("Ordinateur ajouté !");
        break;

      case '2':
        for (var p in produits) {
          print("${p.id} - ${p.name} (${p.prixUnitaire} DH) - ${p.getDetail()}");
        }
        break;

      case '3':
        stdout.write("Nom : "); String n = stdin.readLineSync()!;
        stdout.write("Email : "); String e = stdin.readLineSync()!;
        clients.add(Client(name: n, prenom: "", tlphn: "", email: e));
        print("Client ajouté !");
        break;

      case '4':
        if (clients.isEmpty || produits.isEmpty) {
          print("Erreur: Il faut au moins un client et un produit.");
          break;
        }
        // Création simplifiée d'une commande avec le 1er client et 1er produit
        var ligne = Lignecommande(produit: produits[0], qte: 1);
        var cmd = Commande(id: commandes.length + 1, client: clients[0], statut: StatutCommande.enAttente, lignes: [ligne]);
        commandes.add(cmd);
        print("Commande créée pour ${clients[0].name} ! Total: ${cmd.calculerTotalCommande()} DH");
        break;

      case '5':
        await StoreManager.save(StoreManager.productFile, produits);
        await StoreManager.save(StoreManager.clientFile, clients);
        await StoreManager.save(StoreManager.orderFile, commandes);
        print("Données sauvegardées. Au revoir !");
        continuer = false;
        break;
      
      default:
        print("Choix invalide");
    }
  }
}