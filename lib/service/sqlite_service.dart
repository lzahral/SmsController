import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:test/models/user_information.dart';

class SqliteService {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'database.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE Notes(id INTEGER PRIMARY KEY AUTOINCREMENT,  description TEXT NOT NULL)",
        );
      },
      version: 1,
    );
  }

  Future<int> createItem(Information information) async {
    int result = 0;
    final Database db = await initializeDB();
    final id = await db.insert('information', information.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  return id;
  }
  //   Future<List<Information>> getItems() async {
  //   final db = await initializeDB();
  //   final List<Map<String, Object?>> queryResult = 
  //     await db.query('Information', orderBy: InformationColumn.createdAt);
  //   return queryResult.map((e) => Information.fromMap(e)).toList();
  // }
}
