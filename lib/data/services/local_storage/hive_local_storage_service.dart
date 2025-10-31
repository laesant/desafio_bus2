import 'package:desafio_bus2/domain/models/user.dart';
import 'package:hive_ce/hive.dart';

import './local_storage_service.dart';

class HiveLocalStorageService implements LocalStorageService {
  final Box<User> _box;

  HiveLocalStorageService() : _box = Hive.box<User>('persistedUsersBox');
  @override
  List<User> getPersistedUsers() => _box.values.toList();

  @override
  bool isUserPersisted(String uuid) => _box.containsKey(uuid);

  @override
  Future<void> removeUser(String uuid) => _box.delete(uuid);

  @override
  Future<void> saveUser(User user) => _box.put(user.uuid, user);
}
