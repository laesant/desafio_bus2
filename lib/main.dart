import 'package:desafio_bus2/desafio_bus2_app.dart';
import 'package:desafio_bus2/domain/hive/hive_registrar.g.dart';
import 'package:desafio_bus2/domain/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();

  Hive
    ..init(appDocumentDirectory.path)
    ..registerAdapters();
  await Hive.openBox<User>('persistedUsersBox');
  runApp(ProviderScope(child: const DesafioBus2App()));
}
