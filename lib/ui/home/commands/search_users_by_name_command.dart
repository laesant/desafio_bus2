import 'package:desafio_bus2/domain/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_users_by_name_command.g.dart';

@riverpod
class SearchUsersByNameCommand extends _$SearchUsersByNameCommand {
  @override
  List<User> build() {
    return [];
  }

  void execute({required List<User> allUsers, required String searchTerm}) {
    if (searchTerm.isEmpty) {
      state = allUsers;
    }

    final query = searchTerm.trim().toLowerCase();

    state = allUsers.where((user) {
      final userName = user.fullName.toLowerCase();
      return userName.contains(query);
    }).toList();
  }
}
