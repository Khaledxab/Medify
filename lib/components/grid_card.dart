import 'package:flutter/material.dart';
import '../utils/custom_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';


class GridCard extends StatelessWidget {
  final int index;
  final void Function() onPress;
  const GridCard({Key? key, required this.index, required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index % 2 == 0
          ? const EdgeInsets.only(left: 22)
          : const EdgeInsets.only(right: 22),
      decoration: CustomTheme.getCardDecoration(),
      child: GestureDetector(
        onTap: onPress,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Column(
            children: [
              Expanded(
                  flex: 7,
                  child: SizedBox(
                    width: double.infinity,
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://i.guim.co.uk/img/media/20491572b80293361199ca2fc95e49dfd85e1f42/0_236_5157_3094/master/5157.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=80ea7ebecd3f10fe721bd781e02184c3",
                          
                      fit: BoxFit.cover,
                    ),
                  )),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Column(children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          "title",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        ),
                        Text(
                          "price",
                          style:Theme.of(context).textTheme.headlineSmall ,
                        )
                      ]),
                      )
                  )
            ],
          ),
        ),
      ),
    );
  }
}
