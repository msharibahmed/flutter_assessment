//packages
import 'package:flutter/material.dart';

//constants
import '../constants/constants.dart';

class GridViewCard extends StatelessWidget {
  final int index; //gridview item count
  GridViewCard({@required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: gridViewItem[index]
              .lightColor, //gridview item background(light) color
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(
                  gridViewItem[index].icon, //gridview item icon
                  color:
                      gridViewItem[index].iconColor, //gridview item icon color
                  size: 30,
                ),
              ),
            ),
            const Spacer(),
            Text(
              gridViewItem[index].title, //gridview item title
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 23,
                  letterSpacing: 0.2),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              gridViewItem[index].subTitle, //gridview item sub title
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: gridViewItem[index]
                      .darkColor //gridview item sub title(dark) color
                  ),
            )
          ],
        ),
      ),
    );
  }
}
