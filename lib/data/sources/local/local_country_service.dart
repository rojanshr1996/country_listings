import 'package:country_listings/data/models/country_entity_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalCountryService {
  static const _dbname = "country.db";
  static const _dbVersion = 1;

  Database? _database;

  Future<Database> get db async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await createDatabase();
      return _database!;
    }
  }

  Future<Database?> createDatabase() async {
    String docDirectory = await getDatabasesPath();
    final path = join(docDirectory, _dbname);
    _database = await openDatabase(
      path,
      version: _dbVersion,
      onCreate: _createDatabase,
    );

    return _database;
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('CREATE TABLE countries (officialName TEXT PRIMARY KEY, name TEXT)');
  }

  Future<List<CountryEntityModel>> findAllCountries() async {
    final database = await db;
    final tableData = await database.query('countries');
    List<CountryEntityModel> countryList = tableData.isNotEmpty
        ? tableData
            .map(
              (item) => CountryEntityModel.fromJson(item),
            )
            .toList()
        : [];
    return countryList;
  }

  Future<CountryEntityModel?> updateCountry({required CountryEntityModel country}) async {
    final database = await db;
    final result = await database.update(
      'countries',
      country.toJson(),
      where: 'officialName = ?',
      whereArgs: [
        country.officialName,
      ],
    );

    if (result == 0) {
      final result = await database.insert("countries", country.toJson());
      if (result != 0) {
        return country;
      }
    }
    return country;
  }
}
