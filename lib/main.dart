import 'package:flutter/material.dart';
import 'package:worldtim_app/pages/home.dart';
import 'package:worldtim_app/pages/location.dart';
import 'package:worldtim_app/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => loading(),
      '/home': (context) => Home(),
      '/location': (context) => location(),
    },
  ));
}

