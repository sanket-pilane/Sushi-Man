// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAWttW6lEKuJcf-_1zEeM-g64TIBxU7G3E',
    appId: '1:662837939593:web:8804aa611bfdac0a63e558',
    messagingSenderId: '662837939593',
    projectId: 'sushi-man-66bef',
    authDomain: 'sushi-man-66bef.firebaseapp.com',
    storageBucket: 'sushi-man-66bef.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEEyNF8DIySrVcApnDIvNuI1IwGB8yZDQ',
    appId: '1:662837939593:android:7fe8c3a6e73f994b63e558',
    messagingSenderId: '662837939593',
    projectId: 'sushi-man-66bef',
    storageBucket: 'sushi-man-66bef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSBW4QwmNPz1RDNaKxlY8NAuET-DXpcNA',
    appId: '1:662837939593:ios:99ed9dc9e5b241a263e558',
    messagingSenderId: '662837939593',
    projectId: 'sushi-man-66bef',
    storageBucket: 'sushi-man-66bef.appspot.com',
    iosBundleId: 'com.example.shushiiRestarountApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSBW4QwmNPz1RDNaKxlY8NAuET-DXpcNA',
    appId: '1:662837939593:ios:2563084fe17aadbb63e558',
    messagingSenderId: '662837939593',
    projectId: 'sushi-man-66bef',
    storageBucket: 'sushi-man-66bef.appspot.com',
    iosBundleId: 'com.example.shushiiRestarountApp.RunnerTests',
  );
}