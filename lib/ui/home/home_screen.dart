import 'package:desafio_bus2/domain/models/user.dart';
import 'package:desafio_bus2/ui/core/widgets/loader_messages.dart';
import 'package:desafio_bus2/ui/home/commands/search_users_by_name_command.dart';
import 'package:desafio_bus2/ui/home/home_view_model.dart';
import 'package:desafio_bus2/ui/home/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin, LoaderAndMessages {
  late final Ticker _ticker;
  Duration _lastCallDuration = Duration.zero;
  @override
  void initState() {
    super.initState();
    final notifier = ref.read(homeViewModelProvider.notifier);
    notifier.requestAndPersistNewUser();
    _ticker = createTicker((elapsed) {
      if (elapsed - _lastCallDuration >= Duration(seconds: 5)) {
        notifier.requestAndPersistNewUser();
        _lastCallDuration = elapsed;
      }
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredUsers = ref.watch(searchUsersByNameCommandProvider);
    final userList = ref.watch(homeViewModelProvider);
    final notifier = ref.read(homeViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text('Usuários'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/persisted-users');
            },
            icon: const Icon(Icons.storage_rounded),
          ),
        ],
      ),
      body: Padding(
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
              child: ListView.builder(
                itemCount: filteredUsers.isNotEmpty
                    ? filteredUsers.length
                    : userList.length,
                itemBuilder: (context, index) {
                  User user;
                  if (filteredUsers.isEmpty) {
                    user = userList[index];
                  } else {
                    user = filteredUsers[index];
                  }
                  return UserCard(
                    name: user.fullName,
                    email: user.email,
                    imageUrl: user.imageUrl,
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
          ],
        ),
      ),
    );
  }
}
