import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  static String baseUrl = "${dotenv.get('BASE_URL')}/api";
}
