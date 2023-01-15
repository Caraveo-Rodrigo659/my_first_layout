import 'package:flutter/material.dart';

class favoriteWidget extends StatefulWidget {
  const favoriteWidget({super.key});

  @override
  State<favoriteWidget> createState() => _favoriteWidgetState();
}

class _favoriteWidgetState extends State<favoriteWidget> {
  bool isFavorited = true;
  int favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: togleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$favoriteCount'),
          ),
        )
      ],
    );
  }

  void togleFavorite() {
    setState(() {
      if (isFavorited) {
        favoriteCount -= 1;
        isFavorited = false;
      } else {
        favoriteCount += 1;
        isFavorited = true;
      }
    });
  }
}
