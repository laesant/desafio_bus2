import 'package:desafio_bus2/data/core/rest_client/dio_rest_client_provider.dart';
import 'package:desafio_bus2/data/services/local_storage/hive_local_storage_service.dart';
import 'package:desafio_bus2/data/services/local_storage/local_storage_service.dart';
import 'package:desafio_bus2/data/services/users/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services_providers.g.dart';

@riverpod
UserService userService(Ref ref) =>
    UserService(ref.read(dioRestClientProvider));

@riverpod
LocalStorageService hiveLocalStorageService(Ref ref) =>
    HiveLocalStorageService();
