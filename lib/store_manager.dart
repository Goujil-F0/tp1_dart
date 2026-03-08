import 'dart:convert';
import 'dart:io';
import 'Produit.dart';
import 'Client.dart';
import 'Commande.dart';

class StoreManager {
  static const String productFile = 'produits.json';
  static const String clientFile = 'clients.json';
  static const String orderFile = 'commandes.json';

  // Sauvegarder n'importe quelle liste en JSON
  static Future<void> save(String fileName, List<dynamic> data) async {
    final file = File(fileName);
    String jsonString = jsonEncode(data.map((item) => item.toJson()).toList());
    await file.writeAsString(jsonString);
  }

  // Charger les produits
  static Future<List<Produit>> loadProduits() async {
    try {
      final file = File(productFile);
      if (!await file.exists()) return [];
      String content = await file.readAsString();
      List<dynamic> jsonList = jsonDecode(content);
      return jsonList.map((json) => Produit.fromJson(json)).toList();
    } catch (e) { return []; }
  }

  // Charger les clients
  static Future<List<Client>> loadClients() async {
    try {
      final file = File(clientFile);
      if (!await file.exists()) return [];
      String content = await file.readAsString();
      List<dynamic> jsonList = jsonDecode(content);
      return jsonList.map((json) => Client.fromJson(json)).toList();
    } catch (e) { return []; }
  }

  // Charger les commandes
  static Future<List<Commande>> loadCommandes() async {
    try {
      final file = File(orderFile);
      if (!await file.exists()) return [];
      String content = await file.readAsString();
      List<dynamic> jsonList = jsonDecode(content);
      return jsonList.map((json) => Commande.fromJson(json)).toList();
    } catch (e) { return []; }
  }
}