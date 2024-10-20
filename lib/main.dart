import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maps/maps_app.dart';

import 'firebase_options.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MapsApp());
}
//bin>keytool -list -v -keystore C:\Users\Dell\.android\debug.keystore -alias androiddebugkey -storepass android -keypass android