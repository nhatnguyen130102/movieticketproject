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
    apiKey: 'AIzaSyBPQhRQ0BjzFBcuyrVdBK6te_479nLyz0c',
    appId: '1:662020882807:web:cf66bf42eddcb1d9e32172',
    messagingSenderId: '662020882807',
    projectId: 'movietiket-331f5',
    authDomain: 'movietiket-331f5.firebaseapp.com',
    databaseURL: 'https://movietiket-331f5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'movietiket-331f5.appspot.com',
    measurementId: 'G-3WW9XSPJKJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBoYGGC_H-2AwX1YcsAKPBwT54TXKBgK4c',
    appId: '1:662020882807:android:70cf83fa28d904afe32172',
    messagingSenderId: '662020882807',
    projectId: 'movietiket-331f5',
    databaseURL: 'https://movietiket-331f5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'movietiket-331f5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvnxcIPjen2k_gl7EMfm-loXDvdWH8K6g',
    appId: '1:662020882807:ios:66e618e69bae34e4e32172',
    messagingSenderId: '662020882807',
    projectId: 'movietiket-331f5',
    databaseURL: 'https://movietiket-331f5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'movietiket-331f5.appspot.com',
    iosBundleId: 'com.example.project2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvnxcIPjen2k_gl7EMfm-loXDvdWH8K6g',
    appId: '1:662020882807:ios:0fcd178e0ae63e93e32172',
    messagingSenderId: '662020882807',
    projectId: 'movietiket-331f5',
    databaseURL: 'https://movietiket-331f5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'movietiket-331f5.appspot.com',
    iosBundleId: 'com.example.project2.RunnerTests',
  );
}
