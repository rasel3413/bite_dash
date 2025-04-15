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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkDEV86TMytVsJbG85hPfS0Bu3ezYyPnQ',
    appId: '1:76555199754:ios:ed11728a674d5fa61f46f3',
    messagingSenderId: '76555199754',
    projectId: 'bite-dash-app',
    storageBucket: 'bite-dash-app.firebasestorage.app',
    iosClientId: '76555199754-09k34prsctfsho4tbovfjvn164j72gqb.apps.googleusercontent.com',
    iosBundleId: 'com.example.biteDash',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA_8LMb2RYtqfqDMPgEUxk4nUmgr-cZazQ',
    appId: '1:76555199754:web:64937955da404c861f46f3',
    messagingSenderId: '76555199754',
    projectId: 'bite-dash-app',
    authDomain: 'bite-dash-app.firebaseapp.com',
    storageBucket: 'bite-dash-app.firebasestorage.app',
  );

}