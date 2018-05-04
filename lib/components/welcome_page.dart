import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Theme.of(context).primaryColor,
      child: new Stack(
        children: <Widget>[
          new Image.asset('assets/images/announcement-banner.png'),
          new Container(
              width: 230.0,
              child: new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('TADPOLES TAKE OVER THE EARTH',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      new Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          new Text('12:00~15:00 (Sat)',
                              style: TextStyle(
                                  fontSize: 23.0, color: Colors.white)),
                        ],
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String headline;
  final String byline;

  static const double PADDING = 10.0;

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
            ),
            new Row(
              children: <Widget>[
                new FlatButton(padding: new EdgeInsets.all(0.0),onPressed: () {}, child: new Text('READ MORE'))
              ],
            )
          ],
        )),
      ),
    );
  }
}

class AdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: new Color(0xff0068a3),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Padding(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Text(
                    'I am the ultimate nonsense machine. So I make these machines to better understand myself.',
                    style: new TextStyle(color: Colors.white, fontSize: 16.0)),
                new Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.all(1.0),
                      child: new Text(
                        '土佐信道',
                        style: new TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
          new Container(
            width: MediaQuery.of(context).size.width / 2,
            child: new Image.asset('assets/images/ad.png'),
          )
        ],
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
          'I had so much fun with this one, especially while editing the video and reviewing the clips SullyG sent me, hehehe (btw... 0:28 to 0:35 was all him and his glorious video editing magic). What I love about this arrangement is how our unique sounds really compliment each other, with SullyG recording via direct input, and myself through my usual process with the ribbon mic!  The Otamatone (オタマトーン) is an electronic musical instrument synthesizer. It was developed in Japan in 1998 by the CUBE toy company and the Maywa Denki design firm,[1] led by the brothers Masamichi and Nobumichi Tosa.[2]');
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView(
        children: <Widget>[
          new WelcomeHeader(),
          _newsItem(),
          new AdWidget(),
          _newsItem(),
        ],
      ),
    );
  }
}
