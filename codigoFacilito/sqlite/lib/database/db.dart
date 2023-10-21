
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqlite/database/dbTable.dart';

class DB{

  String name="DiaryApp";
  int version = 1;

  Future<Database>open()async{
    String path = join(await getDatabasesPath(), name);
    openDatabase(
      path,
      version: version,
      readOnly: true,
      onConfigure: onConfigure,
      onCreate: onCreate,// Para manipular la db
    );
  }

  onCreate(Database db, int verson){
    DBTable.TABLES.forEach((scrip) async => await db.execute(scrip));
  }

  onConfigure(Database db) async {
    await db.execute("PRAGMA foreign_keys = ON"); // Activer foreign_keys
  }

}