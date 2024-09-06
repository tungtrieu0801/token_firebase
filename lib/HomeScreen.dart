import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _deviceToken;

  @override
  void initState() {
    super.initState();
    _getToken();
  }

  void _getToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    setState(() {
      _deviceToken = token;
    });
    print("Device Token: $_deviceToken");
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('FCM Token Demo'),
      ),
      body: Center(
        child: Text('Device Token: $_deviceToken'),
      ),
    );
  }
}
