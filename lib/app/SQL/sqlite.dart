import 'package:gym/app/Json/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  final databaseName = "gym.db";
  String users =
      "CREATE TABLE users (userId INTEGER PRIMARY KEY AUTOINCREMENT, userName TEXT NOT NULL, userEmail UNIQUE NOT NULL, userPassword TEXT NOT NULL)";

  Future<Database> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);
    return openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute(users);
    });
  }

  //Login Method
  Future<bool> login(Users user) async {
    final Database db = await initDB();

    var result = await db.rawQuery(
        "select * from users where '${user.userEmail}' AND '${user.userPassword}'");
    if (result.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //Signup Method
  Future<int> signup(Users user) async {
    final Database db = await initDB();

    return db.insert('users', user.toMap());
  }

  //CRUD methods

  //Create user
  Future<int> createUser(Users user) async {
    final Database db = await initDB();
    return db.insert('users', user.toMap());
  }

  //Get
  Future<List<Users>> getUser() async {
    final Database db = await initDB();
    List<Map<String, Object?>> result = await db.query('users');
    return result.map((e) => Users.fromMap(e)).toList();
  }

  //Delete
  Future<int> deleteUser(int id) async {
    final Database db = await initDB();
    return db.delete('users', where: 'userId = ?', whereArgs: [id]);
  }

  //Update
  Future<int> updateUser(name, email, password, userId) async {
    final Database db = await initDB();
    return db.rawUpdate(
        'update users set userName = ?, userEmail = ?, userPassword = ?',
        [name, email, password, userId]);
  }
}
