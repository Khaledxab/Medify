import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_helper/screens/profile.dart';
import '../widgets/my_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';
import '../models/user_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
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
          //IconButton(
          // icon: Icon(Icons.logout_outlined),
          // onPressed: () {
          //   logout(context);
          // },
          //  ),
        ],
      ),
      body: Center(),
      extendBody: true,
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }

  // logout
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
