import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/cards/AlbumCard.dart';
import 'package:flutter_spotify_clone/cards/ArtistCard.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

import '../contants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          stops: [0.05, 0.25],
          colors: [
            Color.fromRGBO(79, 90, 104, 1),
            Color.fromRGBO(18, 18, 18, 1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bonjour', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Container(
                    child: Row(
                      children: [
                        IconButton(icon: new Icon(Icons.schedule), onPressed: () => print('time')),
                        IconButton(icon: new Icon(Icons.settings), onPressed: () => print('settings'))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 2.7,
                children: List.generate(6, (index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                            child: Image.network(
                                IMAGES_PLAYLISTS[Random().nextInt(IMAGES_PLAYLISTS.length - 1)],
                                fit: BoxFit.fitHeight
                            )
                          ),
                          SizedBox(width: 8,),
                          Flexible(
                            child: Text(
                              lipsum.createWord(numWords: Random().nextInt(2) + 1),
                              style: TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://i.scdn.co/image/ab67616100005174c7b729ef2b9e7001a27453f6'),
                        fit: BoxFit.fitHeight
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Plus du genre de '.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Kekra',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return AlbumCard();
                }),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'S\'évader et se divertir',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 215.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(5, (index) {
                  return Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 150.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150.0,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                                IMAGES_PODCASTS[Random().nextInt(IMAGES_PODCASTS.length - 1)],
                                fit: BoxFit.fitHeight
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                lipsum.createWord(numWords: 1),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            SizedBox(height: 2,),
                            Text(
                              lipsum.createSentence(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Écoutés récemment',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  var isArtist = Random().nextBool();

                  if (isArtist) return ArtistCard();
                  return AlbumCard();
                }),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Vos artistes préférés',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 180.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
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
                                image: NetworkImage('https://i.pravatar.cc/300?img=' + (Random().nextInt(10) + 30).toString()),
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
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
