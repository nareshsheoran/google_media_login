import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_media_login/page/home_page.dart';
import 'Shared/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
