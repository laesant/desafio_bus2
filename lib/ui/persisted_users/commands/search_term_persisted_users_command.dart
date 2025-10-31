import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_term_persisted_users_command.g.dart';

@riverpod
class SearchTermPersistedUsersCommand
    extends _$SearchTermPersistedUsersCommand {
  @override
  String build() {
    return '';
  }

  void changeSearchTerm(String value) {
    state = value;
  }
}
