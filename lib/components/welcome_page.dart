import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 140.0,
      color: Theme.of(context).primaryColor,
      child: new Image.asset('assets/images/banner.png'),
    );
  }
}

class NewsItem extends StatelessWidget {
  String headline;
  String byline;

  double PADDING = 10.0;

  NewsItem({this.headline, this.byline});

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Padding(
        padding: new EdgeInsets.all(PADDING),
        child: new Container(
            child: new Column(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(bottom: PADDING),
              child: new Image.network(
                  'https://media.giphy.com/media/3og0IDTEnOWse25ne8/giphy.gif'),
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new Padding(
                  padding: new EdgeInsets.only(bottom: PADDING, top: PADDING),
                  child: new Text(
                    this.headline,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 23.0),
                  ),
                ))
              ],
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new Padding(
                  padding: new EdgeInsets.only(bottom: PADDING, top: PADDING),
                  child: new Text(this.byline),
                ))
              ],
            )
          ],
        )),
      ),
    );
  }
}

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => new _WelcomePageState();
}

Widget _newsItem() {
  return new NewsItem(
      headline: 'The Ultimate Collab! The Otama-mama and the King!',
      byline:
      'I had so much fun with this one, especially while editing the video and reviewing the clips SullyG sent me, hehehe (btw... 0:28 to 0:35 was all him and his glorious video editing magic). What I love about this arrangement is how our unique sounds really compliment each other, with SullyG recording via direct input, and myself through my usual process with the ribbon mic!  The Otamatone (オタマトーン) is an electronic musical instrument synthesizer. It was developed in Japan in 1998 by the CUBE toy company and the Maywa Denki design firm,[1] led by the brothers Masamichi and Nobumichi Tosa.[2]'
  );
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView(
        children: <Widget>[
          new WelcomeHeader(),
          _newsItem(),
          _newsItem(),
        ],
      ),
    );
  }

  void _onFloatingActionButtonPressed() {}
}
