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
    apiKey: 'AIzaSyDCfDuJ5ZQeFb3TiUwuSBu-k2JEYoCVfeA',
    appId: '1:1718960536:web:f11eab788e775f546b6bed',
    messagingSenderId: '1718960536',
    projectId: 'oxdo-cloud-message',
    authDomain: 'oxdo-cloud-message.firebaseapp.com',
    storageBucket: 'oxdo-cloud-message.firebasestorage.app',
    measurementId: 'G-K6STTB4SRF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLhpgzsWBaQWvGuCYIsrRsdNpY1yTgJQc',
    appId: '1:1718960536:android:6a08e88aa798a0ee6b6bed',
    messagingSenderId: '1718960536',
    projectId: 'oxdo-cloud-message',
    storageBucket: 'oxdo-cloud-message.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkp004BXl2k5pAbNN5QnrHwFOPczEvmYA',
    appId: '1:1718960536:ios:b780171fcea665446b6bed',
    messagingSenderId: '1718960536',
    projectId: 'oxdo-cloud-message',
    storageBucket: 'oxdo-cloud-message.firebasestorage.app',
    iosBundleId: 'com.oxdotechnologies.oxdoCloudMessage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkp004BXl2k5pAbNN5QnrHwFOPczEvmYA',
    appId: '1:1718960536:ios:b780171fcea665446b6bed',
    messagingSenderId: '1718960536',
    projectId: 'oxdo-cloud-message',
    storageBucket: 'oxdo-cloud-message.firebasestorage.app',
    iosBundleId: 'com.oxdotechnologies.oxdoCloudMessage',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDCfDuJ5ZQeFb3TiUwuSBu-k2JEYoCVfeA',
    appId: '1:1718960536:web:da0928002e7d67c16b6bed',
    messagingSenderId: '1718960536',
    projectId: 'oxdo-cloud-message',
    authDomain: 'oxdo-cloud-message.firebaseapp.com',
    storageBucket: 'oxdo-cloud-message.firebasestorage.app',
    measurementId: 'G-PQ52M3ZVPJ',
  );
}
