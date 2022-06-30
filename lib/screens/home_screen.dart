import 'package:flutter/material.dart';
import 'package:t_helper/components/grid_card.dart';
import 'package:t_helper/screens/product.dart';
import 'package:t_helper/screens/profile.dart';

import '../widgets/my_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final data = ["1", "2"];

  @override
  Widget build(BuildContext context) {
    onCardPress() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProductScreen()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Medify"),
        automaticallyImplyLeading: false,
        elevation: 4.0,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
      
        ],
      ),
      body: Center(
        child: GridView.builder(
            itemCount: data.length,
            padding: const EdgeInsets.symmetric(vertical: 38),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 30),
            itemBuilder: (BuildContext context, int index) {
              return GridCard(index: index, onPress: onCardPress);
            }),
            
      ),
          extendBody: true,
      bottomNavigationBar: const BottomNavBarCurvedFb1(),

    );
    
  }
}
