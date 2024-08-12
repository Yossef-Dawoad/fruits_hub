import 'package:flutter/material.dart';
import 'package:fruits_hub/fruitshub_app.dart';

import 'core/dependency_injection/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependence();
  runApp(const FruitsHubApp());
}
