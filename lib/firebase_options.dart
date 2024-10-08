// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAGW-laVZ6cELi31UK8vQUkyS5566O3iTg',
    appId: '1:134341891398:web:278e59202b3f516dfdc147',
    messagingSenderId: '134341891398',
    projectId: 'fruits-hub-x',
    authDomain: 'fruits-hub-x.firebaseapp.com',
    storageBucket: 'fruits-hub-x.appspot.com',
    measurementId: 'G-YVTJD3WKBV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBD29zdzYoNAHpXaAd8WNB1LjMmlBZ-Yys',
    appId: '1:134341891398:android:559af32c41283950fdc147',
    messagingSenderId: '134341891398',
    projectId: 'fruits-hub-x',
    storageBucket: 'fruits-hub-x.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUBpsV9Akz5LspsY6ZCf2hXXWjrqeipa0',
    appId: '1:134341891398:ios:38ae19ff0beeb5a1fdc147',
    messagingSenderId: '134341891398',
    projectId: 'fruits-hub-x',
    storageBucket: 'fruits-hub-x.appspot.com',
    androidClientId: '134341891398-48l6cpu2f7gnpmsolq5guujgpbam1rme.apps.googleusercontent.com',
    iosClientId: '134341891398-89cfgp3bm7ktspamavfarp82hqmlkoh8.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitsHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAUBpsV9Akz5LspsY6ZCf2hXXWjrqeipa0',
    appId: '1:134341891398:ios:38ae19ff0beeb5a1fdc147',
    messagingSenderId: '134341891398',
    projectId: 'fruits-hub-x',
    storageBucket: 'fruits-hub-x.appspot.com',
    androidClientId: '134341891398-48l6cpu2f7gnpmsolq5guujgpbam1rme.apps.googleusercontent.com',
    iosClientId: '134341891398-89cfgp3bm7ktspamavfarp82hqmlkoh8.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitsHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAGW-laVZ6cELi31UK8vQUkyS5566O3iTg',
    appId: '1:134341891398:web:4aeab8d72227695efdc147',
    messagingSenderId: '134341891398',
    projectId: 'fruits-hub-x',
    authDomain: 'fruits-hub-x.firebaseapp.com',
    storageBucket: 'fruits-hub-x.appspot.com',
    measurementId: 'G-SQXW1QSNLL',
  );

}