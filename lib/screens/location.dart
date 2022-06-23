import 'package:flutter/material.dart';
import '../widgets/my_nav_bar.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("T-Helper"),
        centerTitle: true,
      ),
      
    extendBody: true,
    bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}