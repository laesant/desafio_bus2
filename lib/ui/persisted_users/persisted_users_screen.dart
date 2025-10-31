import 'package:desafio_bus2/ui/core/widgets/loader_messages.dart';
import 'package:desafio_bus2/ui/core/widgets/remove_user_dialog.dart';
import 'package:desafio_bus2/ui/persisted_users/persisted_users_view_model.dart';
import 'package:desafio_bus2/ui/persisted_users/widgets/persisted_user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersistedUsersScreen extends ConsumerStatefulWidget {
  const PersistedUsersScreen({super.key});

  @override
  ConsumerState<PersistedUsersScreen> createState() =>
      _PersistedUsersScreenState();
}

class _PersistedUsersScreenState extends ConsumerState<PersistedUsersScreen>
    with LoaderAndMessages {
  @override
  Widget build(BuildContext context) {
    final users = ref.watch(persistedUsersViewModelProvider);
    final notifier = ref.read(persistedUsersViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Banco de Dados Local'),
            Text(
              'Usuários salvos no dispositivo',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
      body: users.when(
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => Center(
          child: Text('Error ao buscar usuários persistidos'),
        ),
        data: (data) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              children: [
                SearchBar(
                  hintText: 'Buscar usuários...',
                  onChanged: (value) {
                    notifier.searchUsers(value);
                  },
                ),
                Expanded(
                  child: Visibility(
                    visible: data.isNotEmpty,
                    replacement: Center(
                      child: Text('Nenhum usuário encontrado.'),
                    ),
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final user = data[index];
                        return PersistedUserCard(
                          email: user.email,
                          imageUrl: user.imageUrl,
                          name: user.fullName,
                          onDelete: () async {
                            final remove =
                                await showDialog<bool?>(
                                  context: context,
                                  builder: (context) {
                                    return RemoveUserDialog(user: user);
                                  },
                                ) ??
                                false;
                            if (remove) {
                              await notifier.removeUserFromLocal(user.uuid);
                              showSucessSnackbar(
                                'Usuário removido do armazenamento local!',
                              );
                            }
                          },
                          onTap: () {
                            notifier.cancelSearch();
                            Navigator.pushNamed(
                              context,
                              '/user-details',
                              arguments: user,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
