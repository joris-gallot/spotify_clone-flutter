import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

import '../contants.dart';

class AlbumCard extends StatefulWidget {
  @override
  _AlbumCardState createState() => _AlbumCardState();
}

class _AlbumCardState extends State<AlbumCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 150.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150.0,
            height: 150,
            child: Image.network(
                IMAGES_PLAYLISTS[Random().nextInt(IMAGES_PLAYLISTS.length - 1)],
                fit: BoxFit.fitHeight
            ),
          ),
          Text(
            lipsum.createSentence(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
