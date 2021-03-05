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
          color: grid_view_light_color[index], //gridview item background color
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
                  grid_view_icon[index], //gridview item icon
                  color: grid_view_icon_color[index], //gridview item icon color
                  size: 30,
                ),
              ),
            ),
            const Spacer(),
            Text(
              grid_view_name[index], //gridview item title
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 23,
                  letterSpacing: 0.2),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              grid_view_subname[index], //gridview item sub title
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: grid_view_dark_color[index] //gridview item sub title
                  ),
            )
          ],
        ),
      ),
    );
  }
}
