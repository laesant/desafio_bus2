import 'dart:developer';

import 'package:desafio_bus2/core/result/result.dart';
import 'package:desafio_bus2/data/exceptions/data_exception.dart';
import 'package:desafio_bus2/data/services/local_storage/local_storage_service.dart';
import 'package:desafio_bus2/data/services/users/user_service.dart';
import 'package:desafio_bus2/domain/enums/user_gender.dart';
import 'package:desafio_bus2/domain/models/location.dart';
import 'package:desafio_bus2/domain/models/user.dart';
import 'package:desafio_bus2/domain/models/user_document.dart';
import 'package:dio/dio.dart';

import 'user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserService _userService;
  final LocalStorageService _localStorageService;

  UserRepositoryImpl({
    required UserService userService,
    required LocalStorageService localStorageService,
  }) : _userService = userService,
       _localStorageService = localStorageService;

  @override
  Future<Result<User>> fetchAndCacheUser() async {
    try {
      final response = await _userService.getRandomUsers();
      final userItem = response.results.first;
      final user = User(
        uuid: userItem.login.uuid,
        gender: UserGender.fromString(userItem.gender),
        fullName: '${userItem.name.first} ${userItem.name.last}',
        nat: userItem.nat,
        document: UserDocument(
          name: userItem.id.name,
          value: userItem.id.value,
        ),
        email: userItem.email,
        phone: userItem.phone,
        cell: userItem.cell,
        location: Location(
          address:
              '${userItem.location.street.name}, ${userItem.location.street.number}',
          city: userItem.location.city,
          state: userItem.location.state,
          postcode: userItem.location.postcode.toString(),
          timezone: Timezone(
            offset: userItem.location.timezone.offset,
            description: userItem.location.timezone.description,
          ),
        ),
        dateOfBirth: DateTime.parse(userItem.dob.date),
        registrationDate: DateTime.parse(userItem.registered.date),
        imageUrl: userItem.picture.medium,
      );
      await _localStorageService.saveUser(user);
      return Success(user);
    } on DioException catch (e, s) {
      log('Erro ao buscar usuário aleatório', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar usuário aleatório'),
      );
    }
  }

  @override
  Future<Result<Unit>> removePersistedUser(String uuid) async {
    try {
      await _localStorageService.removeUser(uuid);
      return successOfUnit();
    } catch (e, s) {
      log('Erro ao remover usuário persistido', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao remover usuário persistido'),
      );
    }
  }

  @override
  bool isUserPersisted(String uuid) =>
      _localStorageService.isUserPersisted(uuid);

  @override
  Result<List<User>> getPersistedUsers() {
    try {
      final users = _localStorageService.getPersistedUsers();
      return Success(users);
    } catch (e, s) {
      log('Erro ao bsucar usuários persistidos', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar usuários persistidos'),
      );
    }
  }

  @override
  Future<Result<Unit>> saveUser(User user) async {
    try {
      await _localStorageService.saveUser(user);
      return successOfUnit();
    } catch (e, s) {
      log('Erro ao persistir usuário', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao persistir usuário'),
      );
    }
  }
}
