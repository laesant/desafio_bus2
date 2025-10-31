// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserDetailsViewModel)
const userDetailsViewModelProvider = UserDetailsViewModelFamily._();

final class UserDetailsViewModelProvider
    extends $NotifierProvider<UserDetailsViewModel, UserDetailState> {
  const UserDetailsViewModelProvider._({
    required UserDetailsViewModelFamily super.from,
    required User super.argument,
  }) : super(
         retry: null,
         name: r'userDetailsViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userDetailsViewModelHash();

  @override
  String toString() {
    return r'userDetailsViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UserDetailsViewModel create() => UserDetailsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserDetailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserDetailState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserDetailsViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userDetailsViewModelHash() =>
    r'188c9f292f8d67ee8d42530500fd821d8fd3a268';

final class UserDetailsViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          UserDetailsViewModel,
          UserDetailState,
          UserDetailState,
          UserDetailState,
          User
        > {
  const UserDetailsViewModelFamily._()
    : super(
        retry: null,
        name: r'userDetailsViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserDetailsViewModelProvider call(User initialUser) =>
      UserDetailsViewModelProvider._(argument: initialUser, from: this);

  @override
  String toString() => r'userDetailsViewModelProvider';
}

abstract class _$UserDetailsViewModel extends $Notifier<UserDetailState> {
  late final _$args = ref.$arg as User;
  User get initialUser => _$args;

  UserDetailState build(User initialUser);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<UserDetailState, UserDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UserDetailState, UserDetailState>,
              UserDetailState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
