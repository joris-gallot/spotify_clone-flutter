import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          snap: false,
          floating: false,
          expandedHeight: 130,
          backgroundColor: Color.fromRGBO(18, 18, 18, 1),
          flexibleSpace: FlexibleSpaceBar.createSettings(
            currentExtent: 0,
            child: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              title: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            hintText: 'Artistes, titres, ou podcasts',
                          ),
                        ),
                      ),
                      IconButton(icon: Icon(Icons.photo_camera_outlined), onPressed: () => print('camera'))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text(
                    '$index',
                    textScaleFactor: 5,
                    style: TextStyle(color: index.isOdd ? Colors.black87 : Colors.white),
                  ),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}


