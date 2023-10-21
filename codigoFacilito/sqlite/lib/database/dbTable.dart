class DBTable {
  static const DIARY = "diary";
  static const PAGE = "page";

  static const TABLES = [
    "CREATE TABLE IF NO EXISTS" + DIARY + "("
            "id INTEGER PRIMARY KEY AUTOINCREMENT,"
            "type TEXT,"
            "enterCode TEXT"
            ")",
    "CREATE TABLE IF NO EXISTS" + PAGE + "("
            "id INTEGER PRIMARY KEY AUTOINCREMENT,"
            "date TEXT,"
            "title TEXT,"
            "content TEXT,"
            "diaryId INTEGER,"
            "ROREINGN KEY(diaryId) REFERENCES" + DIARY + "(id)"
            ")",
  ];
}
