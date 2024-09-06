import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FCM Token Demo',
      home: HomeScreen(),
    );
  }
}
