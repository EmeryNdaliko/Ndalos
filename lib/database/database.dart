import 'dart:async';
import 'package:essence_app/constantes/export.dart';
import 'package:mongo_dart/mongo_dart.dart';
// import 'dart:io' show Platform;

// String host = Platform.environment['MONGO_DART_DRIVER_HOST'] ?? '127.0.0.1';
// String port = Platform.environment['MONGO_DART_DRIVER_PORT'] ?? '27017';

// var db = Db('mongodb://$host:$port/mongo_dart-blog');

var db = Db("mongodb://localhost:27017/test");

class Database {
  Database();

// connexion a la base de donnee
  Future<bool> openConnection() async {
    try {
      await db.open();
      return true;
    } catch (e) {
      // await openConnection();
      logger.i('Echouer......');
      return false;
    }
  }

  // Insertion de donnees dans la table
  Future<dynamic> instertCollection(
    String collectionName,
    Map<String, dynamic> value,
  ) async {
    var collection = db.collection(collectionName);

    // Convertir les ObjectId en String
    Map<String, dynamic> convertedValue = value.map((key, val) {
      if (val is ObjectId) {
        return MapEntry(key, val);
      }
      return MapEntry(key, val);
    });

    await collection.insertOne(convertedValue);
  }

  // await collection.insertOne(value);
}
