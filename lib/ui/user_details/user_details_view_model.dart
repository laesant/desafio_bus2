import 'dart:developer';

import 'package:desafio_bus2/core/result/result.dart';
import 'package:desafio_bus2/data/repositories/repositories_providers.dart';
import 'package:desafio_bus2/domain/models/user.dart';
import 'package:desafio_bus2/ui/persisted_users/persisted_users_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_details_view_model.g.dart';

class UserDetailState {
  final User user;
  final bool isPersisted;
  final bool isLoading;

  const UserDetailState({
    required this.user,
    required this.isPersisted,
    this.isLoading = false,
  });

  UserDetailState copyWith({
    bool? isPersisted,
    bool? isLoading,
  }) {
    return UserDetailState(
      user: user,
      isPersisted: isPersisted ?? this.isPersisted,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

@riverpod
class UserDetailsViewModel extends _$UserDetailsViewModel {
  @override
  UserDetailState build(User initialUser) {
    final repo = ref.read(userRepositoryProvider);
    final isCurrentlyPersisted = repo.isUserPersisted(initialUser.uuid);
    return UserDetailState(
      user: initialUser,
      isPersisted: isCurrentlyPersisted,
    );
  }

  Future<void> removeUserFromLocal() async {
    if (!state.isPersisted) return;
    final repo = ref.read(userRepositoryProvider);
    state = state.copyWith(isLoading: true);
    final result = await repo.removePersistedUser(state.user.uuid);
    switch (result) {
      case Success():
        state = state.copyWith(
          isPersisted: false,
          isLoading: false,
        );

        ref.invalidate(persistedUsersViewModelProvider);
        break;
      case Failure():
        log("Erro ao remover o usuario ${state.user.uuid}");
        break;
    }
  }

  Future<void> saveUserFromLocal() async {
    if (state.isPersisted) return;
    final repo = ref.read(userRepositoryProvider);
    state = state.copyWith(isLoading: true);
    final result = await repo.saveUser(state.user);
    switch (result) {
      case Success():
        state = state.copyWith(
          isPersisted: true,
          isLoading: false,
        );

        ref.invalidate(persistedUsersViewModelProvider);
        break;
      case Failure():
        log("Erro ao persistir o usuário: ${state.user.uuid}");
        break;
    }
  }
}
