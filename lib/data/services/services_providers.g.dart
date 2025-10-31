// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userService)
const userServiceProvider = UserServiceProvider._();

final class UserServiceProvider
    extends $FunctionalProvider<UserService, UserService, UserService>
    with $Provider<UserService> {
  const UserServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userServiceHash();

  @$internal
  @override
  $ProviderElement<UserService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserService create(Ref ref) {
    return userService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserService>(value),
    );
  }
}

String _$userServiceHash() => r'677a59d232930ec7dcea08392ac4804d8de0c52d';

@ProviderFor(hiveLocalStorageService)
const hiveLocalStorageServiceProvider = HiveLocalStorageServiceProvider._();

final class HiveLocalStorageServiceProvider
    extends
        $FunctionalProvider<
          LocalStorageService,
          LocalStorageService,
          LocalStorageService
        >
    with $Provider<LocalStorageService> {
  const HiveLocalStorageServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hiveLocalStorageServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hiveLocalStorageServiceHash();

  @$internal
  @override
  $ProviderElement<LocalStorageService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocalStorageService create(Ref ref) {
    return hiveLocalStorageService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalStorageService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalStorageService>(value),
    );
  }
}

String _$hiveLocalStorageServiceHash() =>
    r'cd369fe09a9e075c90378732a9eaa073dc9ae78e';
