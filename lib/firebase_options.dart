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
    apiKey: 'AIzaSyDnUo7Bi_l146QGixfrZ4cX8mQpcYe9oaM',
    appId: '1:862697137065:web:14efa5d78c339e830edab8',
    messagingSenderId: '862697137065',
    projectId: 'flash-chat-1310',
    authDomain: 'flash-chat-1310.firebaseapp.com',
    storageBucket: 'flash-chat-1310.appspot.com',
    measurementId: 'G-KLJNPKQ3M7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBV7fcC1_QHH13vsFF1ZAXYdDolRfNj0k',
    appId: '1:862697137065:android:f3a22332f19130280edab8',
    messagingSenderId: '862697137065',
    projectId: 'flash-chat-1310',
    storageBucket: 'flash-chat-1310.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDu-VK5CKTKlXQcV98Hklvhtl3U-L2Qeuc',
    appId: '1:862697137065:ios:4a9ed06ac5c2d8800edab8',
    messagingSenderId: '862697137065',
    projectId: 'flash-chat-1310',
    storageBucket: 'flash-chat-1310.appspot.com',
    iosBundleId: 'com.example.flashChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDu-VK5CKTKlXQcV98Hklvhtl3U-L2Qeuc',
    appId: '1:862697137065:ios:ed9255e2dc0610ed0edab8',
    messagingSenderId: '862697137065',
    projectId: 'flash-chat-1310',
    storageBucket: 'flash-chat-1310.appspot.com',
    iosBundleId: 'com.example.flashChat.RunnerTests',
  );
}
