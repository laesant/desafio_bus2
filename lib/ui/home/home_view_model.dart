import 'dart:developer';

import 'package:desafio_bus2/core/result/result.dart';
import 'package:desafio_bus2/data/repositories/repositories_providers.dart';
import 'package:desafio_bus2/data/repositories/user/user_repository.dart';
import 'package:desafio_bus2/domain/models/user.dart';
import 'package:desafio_bus2/ui/home/commands/search_users_by_name_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  late final UserRepository _repository;
  @override
  List<User> build() {
    _repository = ref.watch(userRepositoryProvider);
    return [];
  }

  Future<void> requestAndPersistNewUser() async {
    final result = await _repository.fetchAndCacheUser();
    switch (result) {
      case Success(value: final newUser):
        state = [...state, newUser];
        break;
      case Failure():
        log('Erro no Ticker Command');
        break;
    }
  }

  void searchUsers(String query) {
    ref
        .read(searchUsersByNameCommandProvider.notifier)
        .execute(allUsers: state, searchTerm: query);
  }

  void cancelSearch() {
    ref
        .read(searchUsersByNameCommandProvider.notifier)
        .execute(allUsers: state, searchTerm: '');
  }
}
