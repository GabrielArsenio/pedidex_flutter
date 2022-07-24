import 'package:path/path.dart';
import 'package:pedidex_flutter/model/product.model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:pedidex_flutter/util/settings.dart';

class ProductRepository {
  Future<Database> _getDatabase() async {
    return openDatabase(join(await getDatabasesPath(), DATABASE_NAME),
        onCreate: (db, version) {
      return db.execute(PRODUCT_TABLE_CREATE_SCRIPT);
    }, version: 1);
  }

  Future<List<ProductModel>> find() async {
    final Database db = await _getDatabase();
    const String sql = "SELECT * FROM $PRODUCT_TABLE_NAME ORDER BY date DESC";
    final List<Map<String, dynamic>> maps = await db.rawQuery(sql);

    return List.generate(maps.length, (index) {
      return ProductModel(
          id: maps[index]['id'],
          name: maps[index]['name'],
          date: maps[index]['date']);
    });
  }

  Future create(ProductModel model) async {
    final Database db = await _getDatabase();
    return await db.insert(PRODUCT_TABLE_NAME, model.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future update(ProductModel model) async {
    final Database db = await _getDatabase();
    return await db.update(PRODUCT_TABLE_NAME, model.toJson(),
        where: "id = ?", whereArgs: [model.id]);
  }

  Future delete(int id) async {
    final Database db = await _getDatabase();
    return await db
        .delete(PRODUCT_TABLE_NAME, where: "id = ?", whereArgs: [id]);
  }
}
