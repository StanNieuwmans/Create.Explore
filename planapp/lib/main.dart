import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Pages/FullScreenPage/SignInPage.dart';
void main() async{

WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
runApp(PlanApp());
} 
// #docregion MyApp
class PlanApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create. Explore.',
      theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          canvasColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
  // #enddocregion build
}
