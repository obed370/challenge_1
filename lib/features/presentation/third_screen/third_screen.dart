import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatelessWidget {
  final Color pinkColor = Color(0xFFF56E7C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      'assets/IMG-20191002-WA0024.jpg',
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.short_text,
                      size: 30,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child: Text(
                        'Discover \n world with us!',
                        style: GoogleFonts.dMSerifTextTextTheme()
                            .headline1
                            .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 50)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                  hintText: 'Search Something',
                                  hintStyle: GoogleFonts.latoTextTheme()
                                      .caption
                                      .copyWith(fontSize: 18)),
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                              color: pinkColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: FittedBox(
                              fit: BoxFit.none,
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                              color: pinkColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: FittedBox(
                              fit: BoxFit.none,
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Icon(
                                  FontAwesomeIcons.plane,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20)),
                          child: FittedBox(
                              fit: BoxFit.none,
                              child: Icon(
                                FontAwesomeIcons.building,
                                color: pinkColor,
                              )),
                        ),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20)),
                          child: FittedBox(
                              fit: BoxFit.none,
                              child: Icon(
                                FontAwesomeIcons.camera,
                                color: pinkColor,
                              )),
                        ),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20)),
                          child: FittedBox(
                              fit: BoxFit.none,
                              child: Icon(
                                FontAwesomeIcons.busAlt,
                                color: pinkColor,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Theme(
                    data: ThemeData(
                        chipTheme: Theme.of(context).chipTheme.copyWith(
                            selectedColor: pinkColor,
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            padding: EdgeInsets.symmetric(vertical: 5)),
                        fontFamily: GoogleFonts.lato().fontFamily),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Chip(
                          label: Text(
                            'New',
                          ),
                        ),
                        Chip(
                            labelStyle: TextStyle(
                              color: pinkColor,
                            ),
                            label: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Most Viewed'),
                                SizedBox(
                                  height: 5,
                                ),
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: pinkColor,
                                )
                              ],
                            )),
                        Chip(label: Text('Hot tours')),
                        Chip(label: Text('All'))
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed('/last', arguments: {
                                'image':
                                    'assets/brooke-denevan-oylMRhlMJRQ-unsplash.jpg'
                              }),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  width: 170,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.asset(
                                          'assets/brooke-denevan-oylMRhlMJRQ-unsplash.jpg',
                                          fit: BoxFit.fitHeight),
                                      Container(
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                stops: [
                                              0.5,
                                              0.6
                                            ],
                                                colors: <Color>[
                                              pinkColor.withOpacity(0.2),
                                              Colors.black.withOpacity(0.4)
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Lempuyang\nTemple',
                                                style:
                                                    GoogleFonts.latoTextTheme()
                                                        .caption
                                                        .copyWith(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                            FlatButton.icon(
                                                onPressed: () {},
                                                icon: Icon(Icons.location_on,
                                                    color: pinkColor),
                                                label: Text(
                                                  'Indonesia',
                                                  style: GoogleFonts
                                                          .latoTextTheme()
                                                      .caption
                                                      .copyWith(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: pinkColor),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  color: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed('/last', arguments: {
                                'image':
                                    'assets/adrien-xplr-eBKbKMiE03c-unsplash.jpg'
                              }),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  width: 170,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.asset(
                                          'assets/adrien-xplr-eBKbKMiE03c-unsplash.jpg',
                                          fit: BoxFit.fitHeight),
                                      Container(
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                stops: [
                                              0.5,
                                              0.6
                                            ],
                                                colors: <Color>[
                                              pinkColor.withOpacity(0.2),
                                              Colors.black.withOpacity(0.4)
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('The Eiffel\nTower',
                                                style:
                                                    GoogleFonts.latoTextTheme()
                                                        .caption
                                                        .copyWith(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                            FlatButton.icon(
                                                onPressed: () {},
                                                icon: Icon(Icons.location_on,
                                                    color: pinkColor),
                                                label: Text(
                                                  'France',
                                                  style: GoogleFonts
                                                          .latoTextTheme()
                                                      .caption
                                                      .copyWith(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: pinkColor),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  color: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed('/last', arguments: {
                                'image':
                                    'assets/tevin-trinh-W1eCc-89XOo-unsplash.jpg'
                              }),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  width: 170,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.asset(
                                          'assets/tevin-trinh-W1eCc-89XOo-unsplash.jpg',
                                          fit: BoxFit.fitHeight),
                                      Container(
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                stops: [
                                              0.5,
                                              0.6
                                            ],
                                                colors: <Color>[
                                              pinkColor.withOpacity(0.2),
                                              Colors.black.withOpacity(0.4)
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Lempuyang\nTemple',
                                                style:
                                                    GoogleFonts.latoTextTheme()
                                                        .caption
                                                        .copyWith(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                            FlatButton.icon(
                                                onPressed: () {},
                                                icon: Icon(Icons.location_on,
                                                    color: pinkColor),
                                                label: Text(
                                                  'Indonesia',
                                                  style: GoogleFonts
                                                          .latoTextTheme()
                                                      .caption
                                                      .copyWith(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: pinkColor),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  color: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed('/last', arguments: {
                                'image':
                                    'assets/gebhartyler-fr-c-Bqx71k-unsplash.jpg'
                              }),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  width: 170,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.asset(
                                          'assets/gebhartyler-fr-c-Bqx71k-unsplash.jpg',
                                          fit: BoxFit.fitHeight),
                                      Container(
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                stops: [
                                              0.5,
                                              0.6
                                            ],
                                                colors: <Color>[
                                              pinkColor.withOpacity(0.2),
                                              Colors.black.withOpacity(0.4)
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Lempuyang\nTemple',
                                                style:
                                                    GoogleFonts.latoTextTheme()
                                                        .caption
                                                        .copyWith(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                            FlatButton.icon(
                                                onPressed: () {},
                                                icon: Icon(Icons.location_on,
                                                    color: pinkColor),
                                                label: Text(
                                                  'Indonesia',
                                                  style: GoogleFonts
                                                          .latoTextTheme()
                                                      .caption
                                                      .copyWith(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: pinkColor),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  color: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
