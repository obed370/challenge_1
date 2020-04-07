import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForthScreen extends StatelessWidget {
  final Color pinkColor = Color(0xFFF56E7C);

  @override
  Widget build(BuildContext context) {
    Map<String, String> data = ModalRoute.of(context).settings.arguments;
    String imageD = data['image'];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () => Navigator.of(context).pop()),
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Koh Samul, Thailand',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          imageD,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Lipa Noi Beach',
                          style: GoogleFonts.lato(fontSize: 18),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '4.5',
                              style: TextStyle(color: pinkColor),
                            ),
                            Icon(Icons.star, color: pinkColor)
                          ],
                        )
                      ],
                    )
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
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.symmetric(vertical: 5)),
                    fontFamily: GoogleFonts.lato().fontFamily),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Chip(
                        labelStyle: TextStyle(
                          color: pinkColor,
                        ),
                        label: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'About',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor: pinkColor,
                            )
                          ],
                        )),
                    Chip(
                      label: Text('Price', style: TextStyle(fontSize: 16)),
                    ),
                    Chip(
                        label:
                            Text('Insurance', style: TextStyle(fontSize: 16))),
                    Opacity(
                        opacity: 0,
                        child: Chip(
                            label: Text('Insurance',
                                style: TextStyle(fontSize: 16))))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 30),
                child: Text(
                  "The cool water laps at my feet, fizzing and bubbling like brine. Even though the sun is beating on my back, beaming in my eyes, I can't help but smile as the wind caresses my face. Waves ahead roar and roll down, crashing onto the shore with a soft hiss; peeling away at the deep bronze sand beneath my feet. ",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(0.7)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: pinkColor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {},
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 25),
                        child: Text(
                          '\$2.350',
                          style: GoogleFonts.latoTextTheme().caption.copyWith(
                              color: pinkColor, fontWeight: FontWeight.bold),
                        ),
                      )),
                  FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {},
                      color: this.pinkColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 25),
                        child: Text(
                          'Buy now',
                          style: GoogleFonts.latoTextTheme().caption.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
