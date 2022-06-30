import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:t_helper/utils/custom_theme.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      margin: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
      decoration: CustomTheme.getCardDecoration(),
      child: Center(
        child: ClipRRect(borderRadius: BorderRadius.circular(35),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child:SizedBox(
                height: double.infinity,
                child: CachedNetworkImage(imageUrl: "https://i.guim.co.uk/img/media/20491572b80293361199ca2fc95e49dfd85e1f42/0_236_5157_3094/master/5157.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=80ea7ebecd3f10fe721bd781e02184c3", 
                fit: BoxFit.cover,
                ),
                
              ) ),
            Expanded(
              flex: 6,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "title",
                       style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "Qty: 1",
                       style: Theme.of(context).textTheme.bodySmall,
                    ),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "\$ price",
                       style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    ),
                  ],

                ),
              ),
            )  
          ],
        ),),
      ),
    );
    
  }
}