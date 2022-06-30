// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:t_helper/components/custom_button.dart';
import 'package:t_helper/utils/custom_theme.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool addButtonLoad = false;

  void onAddToCart() async {
    setState(() {
      addButtonLoad = true;
    });
    // Add to cart
    setState(() {
      addButtonLoad = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 500,
                        width: double.infinity,
                        child: CachedNetworkImage(
                          fit:  BoxFit.cover,
                          imageUrl:
                              "https://i.guim.co.uk/img/media/20491572b80293361199ca2fc95e49dfd85e1f42/0_236_5157_3094/master/5157.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=80ea7ebecd3f10fe721bd781e02184c3",
                        ),
                      ),
                       Positioned(
                    top: 35,
                    right: 35,
                    child: Container(
                      decoration: ShapeDecoration(
                        color: CustomTheme.yellow, shape: CircleBorder(), shadows: CustomTheme.buttonShadow),
                        child: IconButton(
                          icon: const Icon(Icons.share),
                          color: Colors.black,
                          onPressed: (){},
                          ),
                    ),
                  ),
                  
              ],
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: DefaultTextStyle(
                    style: Theme.of(context).textTheme.headlineLarge!,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 22),
                        child: Text("title"),
                        ),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Text("MRP: "), Text("\$ price")
                          ],
                        ),
                        ),
                        CustomButton(text: ("Add To Cart"), onPress: onAddToCart, loading : addButtonLoad ),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("About the item",
                        style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 20),
                        child: Text("the item description",
                        style: Theme.of(context).textTheme.bodySmall,
                        ),
                        
                        )
                      ],
                    ),
                  ),)
                 

                ],
              ) ,)
          ],)
         ),
    );
  }
}
