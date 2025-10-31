// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_users_by_name_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchUsersByNameCommand)
const searchUsersByNameCommandProvider = SearchUsersByNameCommandProvider._();

final class SearchUsersByNameCommandProvider
    extends $NotifierProvider<SearchUsersByNameCommand, List<User>> {
  const SearchUsersByNameCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchUsersByNameCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchUsersByNameCommandHash();

  @$internal
  @override
  SearchUsersByNameCommand create() => SearchUsersByNameCommand();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<User> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<User>>(value),
    );
  }
}

String _$searchUsersByNameCommandHash() =>
    r'f7ba95eca6445b2ed74685c772e03ccba04b0829';

abstract class _$SearchUsersByNameCommand extends $Notifier<List<User>> {
  List<User> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<User>, List<User>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<User>, List<User>>,
              List<User>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
