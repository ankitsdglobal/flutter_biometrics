import 'package:flutter/material.dart';
import 'package:biometrics/local_authentication_service.dart';
import 'package:biometrics/service_locator.dart';

void main() {
  setupLocator();
  runApp(Biometrics());
}

class Biometrics extends StatefulWidget {
  @override
  _BiometricsState createState() => _BiometricsState();
}

class _BiometricsState extends State<Biometrics> {
  final LocalAuthenticationService _localAuth =
      locator<LocalAuthenticationService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
        ),
        title: Text('Biometrics'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Authenticate'),
          onPressed: _localAuth.authenticate,
        ),
      ),
    ));
  }
}
