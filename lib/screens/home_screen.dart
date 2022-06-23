import 'package:flutter/material.dart';
import '../widgets/my_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("T-Helper"),
        centerTitle: true,
      ),
       body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset("assets/logo.png", fit: BoxFit.contain),
              ),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text("Name",
              style:TextStyle(color: Colors.black54, fontWeight: FontWeight.w500,)),
               Text("ُEmail",
              style:TextStyle(color: Colors.black54, fontWeight: FontWeight.w500,)),
              SizedBox(
                height: 15,
              ),
               ActionChip(
                  label: Text("Logout"),
                  onPressed: () {logout(context);
                  }),
            ],
          ),
          ),
          ),
    extendBody: true,
    bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }




  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}






