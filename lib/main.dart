import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/fruitshub_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/common/services/observers/basic_bloc_observer.dart';
import 'firebase_options.dart';
import 'package:logging/logging.dart';

import 'core/dependency_injection/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDependence();
  setupLogging();
  runApp(const FruitsHubApp());
}

void setupLogging() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) debugPrint('[${record.level.name}]: ${record.time}: ${record.message}');
  });
}
