import 'package:admin/FRONTEND/DASHBOARD.dart';
import 'package:admin/FRONTEND/Navigation.dart';
import 'package:admin/FRONTEND/MENU.dart';
import 'package:admin/FRONTEND/REVIEWS.dart';
import 'package:admin/FRONTEND/SIDEBAR.dart';
import 'package:flutter/material.dart';


import 'ORDERS.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Row(
        children: [
          const Sidebar(),
          Expanded(
            child: Navigator(
              key: Navigation.homeNavigation,
              initialRoute: '/home',
              onGenerateRoute: (RouteSettings settings) {
                Widget page;
                switch (settings.name) {
                  case '/home/dashboard':
                    page = const Dashboard();
                    break;
                  case '/home/order':
                    page = const Orders();
                    break;
                  case '/home/menu':
                    page = const Menu();
                    break;
                  case '/home/review':
                    page = const Reviews();
                    break;
                  default:
                    page = const Dashboard();
                }
                return PageRouteBuilder(
                    pageBuilder:
                        (context, animation, secondaryAnimation) => page,
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return SingleChildScrollView(
                        child: Container(
                          color: Colors.black12,
                          child: child,
                        ),
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.month, this.sales);
  final DateTime month;
  final double sales;
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
