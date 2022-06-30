import 'package:flutter/material.dart';
import 'package:t_helper/components/custom_button.dart';
import 'package:t_helper/components/list_card.dart';
import 'package:t_helper/screens/profile.dart';
import 'package:t_helper/utils/custom_theme.dart';

import '../widgets/my_nav_bar.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final carts = ["1", "2"];
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
      body: Center(
        child: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 30),
              itemCount: carts.length,
              itemBuilder: (context, index) {
                return ListCard();
              },
            ),
            pricefooter(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: CustomButton(
                text: "CHECKOUT",
                onPress: () {},
                loading: false,
              ),
            )
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }

  pricefooter() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Divider(
            height: 2,
            color: CustomTheme.grey,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Text("Total: ",
                    style: Theme.of(context).textTheme.headlineSmall),
                const Spacer(),
                Text("\$ price",
                    style: Theme.of(context).textTheme.headlineSmall)
              ],
            ),
          )
        ],
      ),
    );
  }
}
