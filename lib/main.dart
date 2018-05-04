import 'package:flutter/material.dart';
import 'components/welcome_page.dart';
import 'components/feed_page.dart';
import 'components/about_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: new Color(0xff1da1dd),
      ),
      home: new MyHomePage(title: 'otamatone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentPage = 0;

  Widget _getPage(int index) {
    List<Widget> pages = [
      new WelcomePage(),
      new FeedPage(),
      new AboutPage()
    ];

    return pages[index];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Image.asset('assets/images/banner.png'),
        elevation: 0.0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: new Container(
        child: _getPage(_currentPage),
      ),
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _currentPage,
          onTap: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home), title: new Text('Welcome')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.rss_feed), title: new Text('Feed')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.info), title: new Text('About'))
          ]),
    );
  }
}
