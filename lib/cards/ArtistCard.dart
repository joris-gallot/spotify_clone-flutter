import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class ArtistCard extends StatefulWidget {
  @override
  _ArtistCardState createState() => _ArtistCardState();
}

class _ArtistCardState extends State<ArtistCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage('https://i.pravatar.cc/300?img=' + (Random().nextInt(10) + 1).toString()),
                  fit: BoxFit.fitHeight
              ),
            ),
            // color: Colors.blue,
          ),
          Text(
            lipsum.createWord(numWords: Random().nextInt(2) + 1),
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          )
        ],
      ),
    );
  }
}
