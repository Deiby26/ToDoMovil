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
    apiKey: 'AIzaSyCrs3GFS1DXHIMXA3YA_L5jNQmcpJY6Aac',
    appId: '1:199412096646:web:7a8c4be49517b2ed28fb07',
    messagingSenderId: '199412096646',
    projectId: 'todo-movil-657f7',
    authDomain: 'todo-movil-657f7.firebaseapp.com',
    storageBucket: 'todo-movil-657f7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJsq0PeaeWYaJTaqSLWp1hv8ZI9FBrQB8',
    appId: '1:199412096646:android:cc27485de02a6b9c28fb07',
    messagingSenderId: '199412096646',
    projectId: 'todo-movil-657f7',
    storageBucket: 'todo-movil-657f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgACFGxKq10oTzLgIFPdus8FMTeH4ClQY',
    appId: '1:199412096646:ios:14c44dff5c448c9928fb07',
    messagingSenderId: '199412096646',
    projectId: 'todo-movil-657f7',
    storageBucket: 'todo-movil-657f7.appspot.com',
    iosBundleId: 'com.example.toDo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgACFGxKq10oTzLgIFPdus8FMTeH4ClQY',
    appId: '1:199412096646:ios:14c44dff5c448c9928fb07',
    messagingSenderId: '199412096646',
    projectId: 'todo-movil-657f7',
    storageBucket: 'todo-movil-657f7.appspot.com',
    iosBundleId: 'com.example.toDo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCrs3GFS1DXHIMXA3YA_L5jNQmcpJY6Aac',
    appId: '1:199412096646:web:ca6342fb516e9d7628fb07',
    messagingSenderId: '199412096646',
    projectId: 'todo-movil-657f7',
    authDomain: 'todo-movil-657f7.firebaseapp.com',
    storageBucket: 'todo-movil-657f7.appspot.com',
  );
}
