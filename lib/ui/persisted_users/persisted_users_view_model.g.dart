// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persisted_users_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PersistedUsersViewModel)
const persistedUsersViewModelProvider = PersistedUsersViewModelProvider._();

final class PersistedUsersViewModelProvider
    extends $NotifierProvider<PersistedUsersViewModel, AsyncValue<List<User>>> {
  const PersistedUsersViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'persistedUsersViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$persistedUsersViewModelHash();

  @$internal
  @override
  PersistedUsersViewModel create() => PersistedUsersViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<User>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<User>>>(value),
    );
  }
}

String _$persistedUsersViewModelHash() =>
    r'd3d946b810b2eabbe2c0f29c7c1644b86063ab67';

abstract class _$PersistedUsersViewModel
    extends $Notifier<AsyncValue<List<User>>> {
  AsyncValue<List<User>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<User>>, AsyncValue<List<User>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<User>>, AsyncValue<List<User>>>,
              AsyncValue<List<User>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
