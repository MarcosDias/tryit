import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard_tutorial/responsive/desktop_scaffold.dart';
import 'package:flutter_responsive_dashboard_tutorial/responsive/mobile_scaffold.dart';
import 'package:flutter_responsive_dashboard_tutorial/responsive/responsive_layout.dart';
import 'package:flutter_responsive_dashboard_tutorial/responsive/tablet_scaffild.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold()),
    );
  }
}
