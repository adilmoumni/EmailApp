import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tes/Model/User.dart';

class DatabaseHelper {
  final String tableUser = "userTable";
  final String columnId = "id";
  final String columnName = "username";
  final String columnPassword = "password";

  static final DatabaseHelper _instance = DatabaseHelper.internal();

  DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initdb();
  }

  initdb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "maindb.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE ¨$tableUser($columnId INTEGER PRIMARY KEY,$columnName TEXT,$columnPassword TEXT)");
  }

  //CRUD - CREATE - READ - UPDATE - DELETE
  Future<int> saveUser(User user) async {
    var dbClient = await db;
    int result = await dbClient.insert(tableUser, user.toMap());
    return result;
  }

  Future<List> getAllUser() async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT * FROM $tableUser");
    return result.toList();
  }

  Future<User> getUser(int userId) async {
    var dbClient = await db;
    var result = await dbClient
        .rawQuery("SELECT * FROM $tableUser WHERE $columnId = $userId");
    if (result.length == 0) return null;
    return User.fromMap(result.first);
  }

  Future<int> deleteUser(int userId) async {
    var dbClient = await db;
    return await dbClient
        .delete(tableUser, where: "$columnId = ?", whereArgs: [userId]);
  }

  Future<int> updateUser(User user) async {
    var dbClient = await db;
    return await dbClient.update(tableUser, user.toMap(),
        where: "$columnId =?", whereArgs: [user.id]);
  }

  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}
