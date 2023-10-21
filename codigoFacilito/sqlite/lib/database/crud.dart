
import 'package:sqflite/sqflite.dart';

import 'db.dart';

abstract class CRUD{
  final String table;
  const CRUD(this.table);

  Future<Database>get database async{
    return DB().open();
  }

  query(){
    final 
  }
}