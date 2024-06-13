import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'database_creator.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();
  static Database? _db;

  DatabaseHelper._instance();

  Future<Database?> get db async {
    if (_db == null) {
      _db = await _initDb();
    }
    return _db;
  }
  Future<Database> _initDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, 'my_database.db');

    await deleteDatabase(path);

    final myDatabase = await openDatabase(
      path,
      version: 1,
      onCreate: _createDb,
    );
    return myDatabase;
  }

  // Future<Database> _initDb() async {
  //   Directory dir = await getApplicationDocumentsDirectory();
  //   String path = join(dir.path, 'my_database.db');
  //
  //   bool dbExists = await databaseExists(path);
  //
  //   if (!dbExists) {
  //     _db = await openDatabase(
  //       path,
  //       version: 1,
  //       onCreate: _createDb,
  //     );
  //   } else {
  //     _db = await openDatabase(path);
  //   }
  //
  //   return _db!;
  // }

  void _createDb(Database db, int version) async {
    await db.execute(
      'CREATE TABLE $iventsTable($iventsId INTEGER PRIMARY KEY AUTOINCREMENT, $iventsTitle TEXT, $iventsDescription TEXT, $iventsPhotoPath TEXT)',
    );
    await _insertInitialData(db);
  }

  Future<void> _insertInitialData(Database db) async {
    await db.insert(iventsTable, {
      '$iventsTitle': 'До музею в червні 2024! ',
      '$iventsDescription': 'Разом з авторкою відправимося у захопливу подорож Карпатами сторічної давнини! Ця книжка – історичний провідник Карпатами в усі пори року, який знадобиться і сучасним мандрівникам.',
      '$iventsPhotoPath': 'assets/images/img_7.png'
    });
    await db.insert(iventsTable, {
      '$iventsTitle': 'Реставрація творів мистецтва ',
      '$iventsDescription': 'Цьогоріч у Галереї мистецтв відбудеться черговий відкритий захист магістерських робіт випускників кафедри. Вхід вільний. Запрошуємо усіх бажаючих!',
      '$iventsPhotoPath': 'assets/images/img_8.png'
    });
    await db.insert(iventsTable, {
      '$iventsTitle': 'Матеріальна спадщина кримських татар XIV – XVII ст. ',
      '$iventsDescription': 'Це результат кропіткої праці кандидата історичних наук, старшого наукового співробітника Інституту історії України Національної академії наук України (Київ, Україна) в музейних колекціях Кам’янця-Подільського, Меджибожа, Острога, Дубна та Берестечка. Зокрема, із фондів нашого музею представлено київське наслідування данга (монети) хана Джанібека карбування Ґюлістану 753 р. г. (1352/1353 р.). Її було віднайдено під час розкопок 2017 р. І. Старенький та І. Хромова вважають, що «на сьогодні це найзахідніша офіційна археологічна знахідка монети даного типу на території України».',
      '$iventsPhotoPath': 'assets/images/img_9.png'
    });
    await db.insert(iventsTable, {
      '$iventsTitle': 'Новорічний експонат',
      '$iventsDescription': 'Кам\'янець-Подільський історичний музей запрошує жителів міста до поповнення  фондів музею цікавими матеріалами на різдвяно-новорічну тематику. Давайте разом будемо створювати сторінки історії нашого міста. До цікавих матеріалів належать ялинкові прикраси, новорічні фото вашої родини ХІХ-ХХ ст., поштові листівки 20-60 років ХХ ст. ',
      '$iventsPhotoPath': 'assets/images/img_10.png'
    });
    await db.insert(iventsTable, {
      '$iventsTitle': 'Вишивана традиція Поділля',
      '$iventsDescription': 'У фондах музею зберігається 26 альб﻿омів зразків подільської вишивки ХІХ ст. зібраної Юхимом Сіцинським у селах  Поділля. Щомісяця, у циклі відео талановитими руками Світлани Макаренко буде відтворено автентичні техніки вишивки, показано процес вишивання давніх орнаментів, що представлені у збірці Юхима Сіцинського. ',
      '$iventsPhotoPath': 'assets/images/img_11.png'
    });
  }

  Future<int> insertToy(Map<String, dynamic> toyData) async {
    Database? db = await this.db;
    final int result = await db!.insert(iventsTable, toyData);
    return result;
  }
  Future<List<Map<String, dynamic>>> getToysMapList() async {
    Database? db = await this.db;
    final List<Map<String, dynamic>> result = await db!.query(iventsTable);
    return result;
  }

}