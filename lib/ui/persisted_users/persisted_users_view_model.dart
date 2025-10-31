import 'dart:developer';

import 'package:desafio_bus2/core/result/result.dart';
import 'package:desafio_bus2/data/repositories/repositories_providers.dart';
import 'package:desafio_bus2/domain/models/user.dart';
import 'package:desafio_bus2/ui/persisted_users/commands/search_term_persisted_users_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'persisted_users_view_model.g.dart';

@riverpod
class PersistedUsersViewModel extends _$PersistedUsersViewModel {
  @override
  AsyncValue<List<User>> build() {
    final searchTerm = ref.watch(searchTermPersistedUsersCommandProvider);

    final repo = ref.watch(userRepositoryProvider);
    final result = repo.getPersistedUsers();

    return switch (result) {
      Success(:final value) => AsyncData(
        _search(allUsers: value, searchTerm: searchTerm),
      ),
      Failure() => AsyncError(
        'Erro ao buscar usuários persistidos',
        StackTrace.current,
      ),
    };
  }

  Future<void> removeUserFromLocal(String uuid) async {
    final repo = ref.read(userRepositoryProvider);

    final result = await repo.removePersistedUser(uuid);
    switch (result) {
      case Success():
        state = AsyncData(state.value!.where((u) => u.uuid != uuid).toList());
        cancelSearch();
        ref.invalidateSelf();
        break;
      case Failure():
        log("Erro ao remover o usuario $uuid");
        break;
    }
  }

  void searchUsers(String query) {
    if (state.value != null) {
      ref
          .read(searchTermPersistedUsersCommandProvider.notifier)
          .changeSearchTerm(query);
    }
  }

  void cancelSearch() {
    if (state.value != null) {
      ref
          .read(searchTermPersistedUsersCommandProvider.notifier)
          .changeSearchTerm('');
    }
  }

  List<User> _search({
    required List<User> allUsers,
    required String searchTerm,
  }) {
    if (searchTerm.isEmpty) {
      return allUsers;
    }

    final query = searchTerm.trim().toLowerCase();

    return allUsers.where((user) {
      final userName = user.fullName.toLowerCase();
      return userName.contains(query);
    }).toList();
  }
}
