// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_term_persisted_users_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchTermPersistedUsersCommand)
const searchTermPersistedUsersCommandProvider =
    SearchTermPersistedUsersCommandProvider._();

final class SearchTermPersistedUsersCommandProvider
    extends $NotifierProvider<SearchTermPersistedUsersCommand, String> {
  const SearchTermPersistedUsersCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchTermPersistedUsersCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchTermPersistedUsersCommandHash();

  @$internal
  @override
  SearchTermPersistedUsersCommand create() => SearchTermPersistedUsersCommand();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$searchTermPersistedUsersCommandHash() =>
    r'd742a644a33a112d2134e9cfd0f9efbf22390ed5';

abstract class _$SearchTermPersistedUsersCommand extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
