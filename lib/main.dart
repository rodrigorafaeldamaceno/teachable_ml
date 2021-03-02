import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teachable ML',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // primaryColor: Color(0xFF212121),
        primaryColor: Colors.teal,
        accentColor: Colors.teal,
        primarySwatch: Colors.teal,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
          centerTitle: true,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
        ),
      ),
      home: HomePage(),
    );
  }
}
