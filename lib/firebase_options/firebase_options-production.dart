part of 'firebase_options.dart';

class _ProductionOptions extends DefaultFirebaseOptions {
  FirebaseOptions android = const FirebaseOptions(
    apiKey: 'AIzaSyBYioKI9pZ-BRbnjHnry9UOqRXJOHLbNmA',
    appId: '1:983519523770:android:a72eacc5b723c01c6f6383',
    messagingSenderId: '983519523770',
    projectId: 'remon-mobile-b0c23',
    storageBucket: 'remon-mobile-b0c23.appspot.com',
  );

  FirebaseOptions ios = const FirebaseOptions(
    apiKey: 'AIzaSyCzJ_Q7K2d1LHwAm-5dlKcyjyFlV-e92Q4',
    appId: '1:983519523770:ios:085d95fdbb64bd6f6f6383',
    messagingSenderId: '983519523770',
    projectId: 'remon-mobile-b0c23',
    storageBucket: 'remon-mobile-b0c23.appspot.com',
    iosBundleId: 'com.remonmobile',
  );
}
