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
    apiKey: 'AIzaSyCN8aw57_X8qAcy6K_iUL_YrJMXVy88QVk',
    appId: '1:653973052074:web:fd73c9df4dc53698534ed3',
    messagingSenderId: '653973052074',
    projectId: 'babyshophub53',
    authDomain: 'babyshophub53.firebaseapp.com',
    storageBucket: 'babyshophub53.firebasestorage.app',
    measurementId: 'G-KTRVXYDWCX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBQca4Zw07NypwqnjtuPsaMCWrpIbivwg',
    appId: '1:653973052074:android:9289e104eb6f289d534ed3',
    messagingSenderId: '653973052074',
    projectId: 'babyshophub53',
    storageBucket: 'babyshophub53.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLF0qPkOroCVG7UExPq48wNj-6BIq1-eY',
    appId: '1:653973052074:ios:97f17811f6b8c023534ed3',
    messagingSenderId: '653973052074',
    projectId: 'babyshophub53',
    storageBucket: 'babyshophub53.firebasestorage.app',
    iosBundleId: 'com.example.babyShopHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLF0qPkOroCVG7UExPq48wNj-6BIq1-eY',
    appId: '1:653973052074:ios:97f17811f6b8c023534ed3',
    messagingSenderId: '653973052074',
    projectId: 'babyshophub53',
    storageBucket: 'babyshophub53.firebasestorage.app',
    iosBundleId: 'com.example.babyShopHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCN8aw57_X8qAcy6K_iUL_YrJMXVy88QVk',
    appId: '1:653973052074:web:7f3ce4b500e6314c534ed3',
    messagingSenderId: '653973052074',
    projectId: 'babyshophub53',
    authDomain: 'babyshophub53.firebaseapp.com',
    storageBucket: 'babyshophub53.firebasestorage.app',
    measurementId: 'G-VBQE3KJ87Y',
  );
}