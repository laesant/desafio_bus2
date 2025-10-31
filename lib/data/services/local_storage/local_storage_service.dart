import 'package:desafio_bus2/domain/models/user.dart';

abstract interface class LocalStorageService {
  Future<void> saveUser(User user);
  List<User> getPersistedUsers();
  Future<void> removeUser(String uuid);
  bool isUserPersisted(String uuid);
}
