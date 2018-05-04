import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  final String headline;
  final String byline;

  static const double PADDING = 10.0;

  FeedItem({this.headline, this.byline});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      color: Colors.white,
      child: new Row(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.only(left: 20.0, right: 20.0),
            child: new CircleAvatar(backgroundColor: Colors.blue),
          ),
          new Expanded(
              child: new Container(
                  child: new Column(
            children: <Widget>[new Text(this.headline, style: new TextStyle(fontWeight: FontWeight.bold),), new Text(this.byline)].map((e) {
              return Row(
                children: <Widget>[e],
              );
            }).toList(),
          ))),
        ],
      ),
    );
  }
}

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => new _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView(
          children: new List<Widget>.generate(
              10,
              (i) => new FeedItem(
                  headline: 'News item ' + i.toString(),
                  byline: 'Pwawawawaw wawaw aww'))),
    );
  }
}
