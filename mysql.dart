import 'package:mysql1/mysql1.dart';

class Mysql{

  
  static String host = '127.0.0.1:3306',
                user = 'root',
                password = 'Itsme',
                db = 'itinerary';
  static int port = 3307;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db
    );
    return await MySqlConnection.connect(settings);
}
}