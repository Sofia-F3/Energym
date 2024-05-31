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
    apiKey: 'AIzaSyAzrsWmCO0OsVvmMwgCdmaokQdSoRCBHQ0',
    appId: '1:730225443071:web:4d7c91961bbaf91ac9ccca',
    messagingSenderId: '730225443071',
    projectId: 'energym-f9949',
    authDomain: 'energym-f9949.firebaseapp.com',
    storageBucket: 'energym-f9949.appspot.com',
    measurementId: 'G-XDXXM3CNH7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDabWGSqR2t98L11OSxnb8aTBGMmWgsxMY',
    appId: '1:730225443071:android:1f39d4683bc1991fc9ccca',
    messagingSenderId: '730225443071',
    projectId: 'energym-f9949',
    storageBucket: 'energym-f9949.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSKdmmkmLKzuQCzm7Y3yFj6tUM67GwOUU',
    appId: '1:730225443071:ios:684fdfcd50263f76c9ccca',
    messagingSenderId: '730225443071',
    projectId: 'energym-f9949',
    storageBucket: 'energym-f9949.appspot.com',
    iosBundleId: 'com.example.energymc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSKdmmkmLKzuQCzm7Y3yFj6tUM67GwOUU',
    appId: '1:730225443071:ios:684fdfcd50263f76c9ccca',
    messagingSenderId: '730225443071',
    projectId: 'energym-f9949',
    storageBucket: 'energym-f9949.appspot.com',
    iosBundleId: 'com.example.energymc',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAzrsWmCO0OsVvmMwgCdmaokQdSoRCBHQ0',
    appId: '1:730225443071:web:08c481669bb7adc8c9ccca',
    messagingSenderId: '730225443071',
    projectId: 'energym-f9949',
    authDomain: 'energym-f9949.firebaseapp.com',
    storageBucket: 'energym-f9949.appspot.com',
    measurementId: 'G-WYPYTX6GK0',
  );
}
