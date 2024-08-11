import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fruits_hub/core/common/services/local_storage/shared_prefs_helper.dart';

final sl = GetIt.instance;

Future<void> initializeDependence() async {
  // Register SharedPreferences & secure storage
  await setupSharedAndSecureStorage();
}

Future<void> setupSharedAndSecureStorage() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
  sl.registerLazySingleton<SharedPrefHelper>(() => SharedPrefHelper(sl(), sl()));
}
