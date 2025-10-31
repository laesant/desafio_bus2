import 'package:desafio_bus2/domain/models/user.dart';
import 'package:desafio_bus2/ui/core/themes/app_theme.dart';
import 'package:desafio_bus2/ui/home/home_screen.dart';
import 'package:desafio_bus2/ui/persisted_users/persisted_users_screen.dart';
import 'package:desafio_bus2/ui/user_details/user_details_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/material.dart';

class DesafioBus2App extends StatelessWidget {
  const DesafioBus2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Bus2',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      locale: Locale('pt', 'BR'),
      supportedLocales: [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routes: {
        '/': (_) => const HomeScreen(),
        '/persisted-users': (_) => const PersistedUsersScreen(),
        '/user-details': (context) => UserDetailsScreen(
          user: ModalRoute.of(context)?.settings.arguments as User,
        ),
      },
    );
  }
}
