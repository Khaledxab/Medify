import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:t_helper/components/list_card.dart';
import 'package:t_helper/screens/checkout.dart';
import 'package:t_helper/screens/home_screen.dart';
import 'package:t_helper/screens/login_screen.dart';
import 'package:t_helper/screens/product.dart';
import 'package:t_helper/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:t_helper/utils/custom_theme.dart';
import 'firebase_options.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> main() async {
  //firebase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

// stripe setup
  final String response =
      await rootBundle.loadString("assets/config/stripe.json");
  final data = await json.decode(response);
  Stripe.publishableKey = data["publishableKey"];
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email And Password Login',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
