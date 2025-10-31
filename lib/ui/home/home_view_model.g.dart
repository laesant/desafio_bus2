// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeViewModel)
const homeViewModelProvider = HomeViewModelProvider._();

final class HomeViewModelProvider
    extends $NotifierProvider<HomeViewModel, List<User>> {
  const HomeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeViewModelHash();

  @$internal
  @override
  HomeViewModel create() => HomeViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<User> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<User>>(value),
    );
  }
}

String _$homeViewModelHash() => r'160831a3130b682ecd6c2d2b5e476edef9965d76';

abstract class _$HomeViewModel extends $Notifier<List<User>> {
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
