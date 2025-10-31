import 'package:desafio_bus2/data/repositories/user/user_repository.dart';
import 'package:desafio_bus2/data/repositories/user/user_repository_impl.dart';
import 'package:desafio_bus2/data/services/services_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repositories_providers.g.dart';

@riverpod
UserRepository userRepository(Ref ref) => UserRepositoryImpl(
  userService: ref.read(userServiceProvider),
  localStorageService: ref.read(hiveLocalStorageServiceProvider),
);
