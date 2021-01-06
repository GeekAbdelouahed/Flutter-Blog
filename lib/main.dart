import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'src/infrastructure/core/preferences.dart';
import 'src/injection.dart';
import 'src/presentation/routes/routes.dart';
import 'src/presentation/routes/routes_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.prod);

  await GetIt.I.isReady<AppPreferences>();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Blog',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: AppRoutesGenerator.generateRoute,
        initialRoute: getIt<AppPreferences>().isLoggedIn
            ? AppRoutes.home
            : AppRoutes.onBoarding,
      );
}
