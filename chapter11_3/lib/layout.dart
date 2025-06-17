import 'package:chapter11_3/login.dart';
import 'package:flutter/material.dart';
import 'package:chapter11_3/responsive/breakpoint.dart';
import 'package:chapter11_3/responsive/responsive_center.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const ResponsiveCenter(
        maxContentWidth: Breakpoint.deskTop,
        padding: EdgeInsetsGeometry.all(16),
        child: Login(),
      ),
    );
  }
}