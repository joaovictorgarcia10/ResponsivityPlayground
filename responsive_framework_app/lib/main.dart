import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Framework App',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      builder: (context, widget) {
        return ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          minWidth: 450.0,
          breakpoints: const [
            ResponsiveBreakpoint.resize(450.0, name: MOBILE),
            ResponsiveBreakpoint.resize(700.0, name: TABLET),
            ResponsiveBreakpoint.resize(900.0, name: DESKTOP),
          ],
        );
      },
      home: const HomePage(),
    );
  }
}
