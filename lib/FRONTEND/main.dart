import 'package:admin/FRONTEND/HOMEPAGE.dart';
import 'package:admin/FRONTEND/ORDERS.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import 'MENU.dart';
import 'REVIEWS.dart';
import 'Navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      key: Navigation.appNavigation,
      routes: {
        '/home':(context)=> const Homepage(),
      },
    );
  }
}

