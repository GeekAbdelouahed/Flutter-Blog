import 'package:Blog/src/infrastructure/core/network/network.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/core/network/network.dart';
import 'infrastructure/core/preferences.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
  getIt.registerSingletonAsync<AppPreferences>(
    () async => await AppPreferences.instance,
  );
  getIt.registerFactory<AppNetworkClient>(() => AppNetwork.instance);
}
