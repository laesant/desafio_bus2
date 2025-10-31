import 'package:desafio_bus2/core/result/result.dart';
import 'package:desafio_bus2/domain/models/user.dart';

abstract interface class UserRepository {
  Future<Result<User>> fetchAndCacheUser();
  Future<Result<Unit>> removePersistedUser(String uuid);
  bool isUserPersisted(String uuid);
  Result<List<User>> getPersistedUsers();
  Future<Result<Unit>> saveUser(User user);
}
