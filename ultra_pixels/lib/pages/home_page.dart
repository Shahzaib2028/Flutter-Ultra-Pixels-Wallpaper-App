import 'package:awesome_app/pages/abstract.dart';
import 'package:awesome_app/pages/adventure.dart';
import 'package:awesome_app/pages/animals.dart';
import 'package:awesome_app/pages/anime.dart';
import 'package:awesome_app/pages/artsnculture.dart';
import 'package:awesome_app/pages/blacknwhite.dart';
import 'package:awesome_app/pages/fashion.dart';
import 'package:awesome_app/pages/flowers.dart';
import 'package:awesome_app/pages/food.dart';
import 'package:awesome_app/pages/landscape.dart';
import 'package:awesome_app/pages/mobile.dart';
import 'package:awesome_app/pages/nature.dart';
import 'package:awesome_app/pages/neon.dart';
import 'package:awesome_app/pages/potrait.dart';
import 'package:awesome_app/pages/search_query.dart';
import 'package:awesome_app/pages/sports.dart';
import 'package:awesome_app/pages/technology.dart';
import 'package:flutter/material.dart';

import '../Navigator_transition.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSearching = false;
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? Text("Ultra Pixel")
            : TextField(
                controller: nameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Search Image",
                    hintStyle: TextStyle(color: Colors.white),
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
        actions: [
          isSearching
              ? IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          Bouncy(
                              widget: SearchQuery(
                            searching: nameController.text,
                          )));
                    });
                  })
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      this.isSearching = !this.isSearching;
                    });
                  }),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Abstract()));
              },
              child: Image.asset(
                'assets/abstract.jpg',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Adventure()));
              },
              child: Image.asset('assets/adventure.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Animals()));
              },
              child: Image.asset('assets/animals.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Anime()));
              },
              child: Image.asset('assets/anime.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Art()));
              },
              child: Image.asset('assets/artsnculture.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: BnW()));
              },
              child: Image.asset('assets/blacknwhite.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Fashion()));
              },
              child: Image.asset('assets/fashion.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Flowers()));
              },
              child: Image.asset('assets/flowers.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Food()));
              },
              child: Image.asset('assets/food.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Landscape()));
              },
              child: Image.asset('assets/landscape.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Mobile()));
              },
              child: Image.asset('assets/mobile.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Nature()));
              },
              child: Image.asset('assets/nature.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Neon()));
              },
              child: Image.asset('assets/neon.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Sports()));
              },
              child: Image.asset('assets/sport.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Potrait()));
              },
              child: Image.asset('assets/potrait.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(context, Bouncy(widget: Technology()));
              },
              child: Image.asset('assets/technology.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
