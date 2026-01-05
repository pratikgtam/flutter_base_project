import 'package:main/core/api/api_client.dart';

class AuthRepository {
  AuthRepository(this.dio);

  final DioService dio;

  Future<dynamic> fetch() async {}
}
